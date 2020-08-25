const SectionsService = {
    getAllSections(db) {
        return db
            .from('commentary_chapter_sections AS ccs')
            .select(
                'ccs.id',
                'ccs.section_number',
                'ccs.chapter_number',
                'ccs.latin',
                db.raw(
                    `(
                        select array_to_json(
                            array_agg(row_to_json(h))
                        ) from (
                            select id, section, tag, comment
                            from commentary_comments AS cc
                            where cc.section=ccs.section_number
                        ) h
                    ) as comments`
                )
            )
            .orderBy('ccs.section_number');
    },
    getAllSectionNumbers(db) {
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
                                select id, section_number
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
    },
    getSectionByNumber(db, section_number) {
        return db
        .from('commentary_chapter_sections AS ccs')
        .where('ccs.section_number', section_number)
        .select(
            'ccs.id',
            'ccs.section_number',
            'ccs.chapter_number',
            'ccs.latin',
            db.raw(
                `(
                    select array_to_json(
                        array_agg(row_to_json(h))
                    ) from (
                        select id, section, tag, comment
                        from commentary_comments AS cc
                        where cc.section=ccs.section_number
                    ) h
                ) as comments`
            )
        )
            .first();
    },
    insertSection(db, newSection) {
        return db
            .insert(newSection)
            .into('commentary_chapter_sections')
            .returning('*')
            .then(([section]) => section)
            .then(section => 
                this.getSectionByNumber(db, section.section_number)
            );
    },
    updateSection(db, id, newSectionFields) {
        return db('commentary_chapter_sections')
            .where({ id })
            .update(newSectionFields);
    },
    deleteSection(db, id) {
        return db('commentary_chapter_sections')
            .where({ id })
            .delete()
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

module.exports = SectionsService;