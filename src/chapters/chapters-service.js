const ChaptersService = {
    getAllChapters(db) {
        return db
        .from('commentary_chapters AS chap')
        .select(
            'chap.id',
            'chap.book_number',
            'chap.chapter_number',
            'chap.chapter_title',
            'chap.chapter_intro',
            db.raw(
                `(
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
                ) as sections`
            )
        )
        .orderBy('chap.chapter_number');
    },
    getAllChapterNumbers(db) {
        return db
            .select(
                'id',
                'book_number',
                'chapter_number'
            )
            .from('commentary_chapters');
    },
    getByChapterNumber(db, chapter_number) {
        return db
            .from('commentary_chapters AS chap')
            .select(
                'chap.id',
                'chap.book_number',
                'chap.chapter_number',
                'chap.chapter_title',
                'chap.chapter_intro',
                db.raw(
                    `(
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
                    ) as sections`
                )
            )
            .where('chap.chapter_number', chapter_number)
            .first();
    },
    insertChapter(db, newChapter) {
        return db
            .insert(newChapter)
            .into('commentary_chapters')
            .returning('*')
            .then(([chapter]) => chapter)
            .then(chapter =>
                ChaptersService.getByChapterNumber(db, chapter.chapter_number)    
            );
    },
    updateChapter(db, id, newChapterFields) {
        return db('commentary_chapters')
            .where({ id })
            .update(newChapterFields);       
    },
    deleteChapter(db, id) {
        return db('commentary_chapters')
            .where({ id })
            .delete();
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
            sections: sections ? sections.map(s => ChaptersService.formatSection(s)) : []
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

module.exports = ChaptersService;