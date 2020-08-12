CREATE TABLE commentary_chapters (
    id TEXT PRIMARY KEY,
    book_number INTEGER REFERENCES commentary_books(book_number) ON DELETE CASCADE NOT NULL,
    chapter_number INTEGER NOT NULL,
    chapter_title TEXT NOT NULL
);