BEGIN;

TRUNCATE 
    commentary_chapters
    RESTART IDENTITY CASCADE;

SET CLIENT_ENCODING to 'utf8';

INSERT INTO commentary_chapters (book_number, chapter_number, chapter_title)
    VALUES
    (21, '21-1', 'Livy’s War Monograph and Hannibal’s Oath'),
    (21, '21-2', 'Hamilcar’s War, Hasdrubal, and an Assassination'),
    (21, '21-3', 'The Carthaginians Debate Hasdrubal’s Successor'),
    (21, '21-4', 'Hannibal’s Character'),
    (21, '21-5', 'The Conquest of Iberia and the Battle of the River Tagus');

COMMIT;