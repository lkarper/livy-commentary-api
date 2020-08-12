CREATE TABLE commentary_chapter_sections (
    id TEXT PRIMARY KEY ,
    book_number INTEGER REFERENCES commentary_books(book_number) ON DELETE CASCADE NOT NULL,
    chapter_number TEXT REFERENCES commentary_chapters(id) ON DELETE CASCADE NOT NULL,
    section_number INTEGER NOT NULL,
    latin TEXT NOT NULL
);