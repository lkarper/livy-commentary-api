const BooksService = {
    getAllBooks(db) {
        return db
        .from('commentary_books as cb')
        .select(
            'cb.id',
            'cb.book_number',
            db.raw(
                `(
                    select array_to_json(
                        array_agg(row_to_json(h))
                    ) from (
                        select id, book_number, chapter_number, chapter_title, chapter_intro, (
                            select array_to_json(
                                array_agg(row_to_json(h))
                            ) from (
                                select id, section_number, chapter_number, latin, (
                                    select array_to_json(
                                        array_agg(row_to_json(h))
                                    ) from (
                                        select id, section, tag, comment
                                        from commentary_comments AS cc
                                        where cc.section=ccs.section_number
                                    ) h
                                ) as comments
                                from commentary_chapter_sections AS ccs
                                where chap.chapter_number=ccs.chapter_number
                            ) h
                        ) as sections
                        from commentary_chapters AS chap
                        where cb.book_number=chap.book_number    
                    ) h
                ) as chapters`
            )
        )
        .orderBy('cb.book_number');
    },
    getAllBookNumbers(db) {
        return db
            .select(
                'id',
                'book_number'
            )
            .from('commentary_books')
            .orderBy('commentary_books.book_number');
    },
    getByBookNumber(db, book_number) {
        return db
            .from('commentary_books as cb')
            .select(
                'cb.id',
                'cb.book_number',
                db.raw(
                    `(
                        select array_to_json(
                            array_agg(row_to_json(h))
                        ) from (
                            select id, book_number, chapter_number, chapter_title, chapter_intro, (
                                select array_to_json(
                                    array_agg(row_to_json(h))
                                ) from (
                                    select id, section_number, chapter_number, latin, (
                                        select array_to_json(
                                            array_agg(row_to_json(h))
                                        ) from (
                                            select id, section, tag, comment
                                            from commentary_comments AS cc
                                            where cc.section=ccs.section_number
                                        ) h
                                    ) as comments
                                    from commentary_chapter_sections AS ccs
                                    where chap.chapter_number=ccs.chapter_number
                                ) h
                            ) as sections
                            from commentary_chapters AS chap
                            where cb.book_number=chap.book_number    
                        ) h
                    ) as chapters`
                )
            )
            .where({ book_number })
            .first();
    },
    insertBook(db, newBook) {
        return db
            .insert(newBook)
            .into('commentary_books')
            .returning('*')
            .then(([book]) => book)
            .then(book => 
                BooksService.getByBookNumber(db, book.book_number)
            );
    },
    updateBook(db, id, newBookFields) {
        return db('commentary_books')
            .where({ id })
            .update(newBookFields);
    },
    deleteBook(db, id) {
        return db('commentary_books')
            .where({ id })
            .delete();
    },
    formatBook(book) {
        const {
            id,
            book_number,
            chapters,
        } = book;
        return {
            id,
            book_number,
            chapters: chapters ? chapters.map(c => BooksService.formatChapter(c)) : []
        };
    },
    formatChapter(chapter) {
        const {
            id,
            book_number,
            chapter_number,
            chapter_title,
            chapter_intro,
            sections,
        } = chapter;
        return {
            id,
            book_number,
            chapter_number,
            chapter_title,
            chapter_intro,
            sections: sections ? sections.map(s => BooksService.formatSection(s)) : []
        };
    },
    formatSection(section) {
        const {
            id,
            section_number,
            chapter_number,
            latin,
            comments,
        } = section;
        return {
            id,
            section_number,
            chapter_number,
            latin,
            comments: comments ? comments : []
        }
    },
}

module.exports = BooksService;