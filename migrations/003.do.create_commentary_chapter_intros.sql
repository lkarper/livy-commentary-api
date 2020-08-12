CREATE TABLE commentary_chapter_intros (
    id TEXT PRIMARY KEY,
    book INTEGER REFERENCES commentary_books(book_number) ON DELETE CASCADE NOT NULL,
    chapter TEXT REFERENCES commentary_chapters(id) ON DELETE CASCADE NOT NULL,
    intro_paragraph TEXT NOT NULL
);