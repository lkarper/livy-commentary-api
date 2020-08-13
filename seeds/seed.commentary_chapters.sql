BEGIN;

TRUNCATE 
    commentary_chapters
    RESTART IDENTITY CASCADE;

SET CLIENT_ENCODING to 'utf8';

INSERT INTO commentary_chapters (book_number, chapter_number, chapter_title, chapter_intro)
    VALUES
    (21, '21-1', 'Livy’s War Monograph and Hannibal’s Oath', E'Livy begins his Third Decade with a prefatory statement that establishes the topic of the books that follow and defines them as a distinct unit within the Ab Urbe Condita. Through a series of allusions to the works of Herodotus and Thucydides, Livy places his account of the Second Punic War in a larger historiographic tradition, in which ancient historians claim that the war that they chronicle is the greatest of all wars. The backstory of previous conflicts between Romans and the Carthaginians are briefly alluded to as well.\nLivy ends the chapter with the famous story of Hamilcar Barca—angered by the terms of the treaty which ended the First Punic War (264 - 241 BCE) —compelling his son, Hannibal, to promise that he would become an enemy of Rome.'),
    (21, '21-2', 'Hamilcar’s War, Hasdrubal, and an Assassination', 'Hamilcar achieves significant territorial gains in Spain and in Africa after Rome’s victory in the First Punic War (237 - 226 BCE), but further progress is stymied by his death. In wake of Hamilar’s death, Hasdrubal, Hamilcar’s adopted son-in-law and alleged lover, takes control of the Barcid faction and expands Carthaginian gains through shrewd diplomacy, but is assassinated by the retainer of a foreign king. Finally, the terms of a revised treaty with Rome (226 BCE), which serve as a flashpoint for the rest of the book, are introduced.'),
    (21, '21-3', 'The Carthaginians Debate Hasdrubal’s Successor', 'The soldiers of the late Hasdrubal proclaim Hannibal commander and the people are expected to endorse the decision. It is recalled that Hasdrubal had personally summoned Hannibal as a young man to his camp. The Barcid faction pushes hard for Hannibal to succeed Hasdrubal but run into opposition from Hanno in the Carthignian assembly who is fearful of the consequences of giving so much power to such a prominent young man.'),
    (21, '21-4', 'Hannibal’s Character', 'Despite Hanno’s efforts, Hannibal is sent to Spain to lead the Barcid forces. Livy describes Hannibal’s physical traits and characteristics and is made out to be a super villain a la Catiline in Sallust’s Catilinarian Conspiracy.'),
    (21, '21-5', 'The Conquest of Iberia and the Battle of the River Tagus', 'Hannibal makes ready for war on Rome and reasons that an attack on the neural city of Saguntum in Iberia will provoke the Romans. Hoping to seem like he was forced into a conflict with Saguntum, he launches a campaign on all Iberian peoples who border Saguntum. He captures Cartala, the chief city of the Olcades. After wintering in Carthago Nova, Hannibal makes war against the Vaccaei, who unite with Olcaden exiles. The combined forces outnumber Hannibal and meet him at the River Tagus. There Hannibal lays a trap and easily defeats the Iberians.');

COMMIT;