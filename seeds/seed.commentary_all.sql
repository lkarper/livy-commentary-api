BEGIN;

TRUNCATE
    commentary_books,
    commentary_chapters,
    commentary_chapter_sections,
    commentary_comments RESTART IDENTITY CASCADE;

SET CLIENT_ENCODING TO 'utf8';

INSERT INTO commentary_books (book_number) 
    VALUES
    (21); 

INSERT INTO commentary_chapters (book_number, chapter_number, chapter_title, chapter_intro)
    VALUES
    (21, '21-1', 'Livy’s War Monograph and Hannibal’s Oath', E'Livy begins his Third Decade with a prefatory statement that establishes the topic of the books that follow and defines them as a distinct unit within the Ab Urbe Condita. Through a series of allusions to the works of Herodotus and Thucydides, Livy places his account of the Second Punic War in a larger historiographic tradition, in which ancient historians claim that the war that they chronicle is the greatest of all wars. The backstory of previous conflicts between Romans and the Carthaginians are briefly alluded to as well.\nLivy ends the chapter with the famous story of Hamilcar Barca—angered by the terms of the treaty which ended the First Punic War (264 - 241 BCE) —compelling his son, Hannibal, to promise that he would become an enemy of Rome.'),
    (21, '21-2', 'Hamilcar’s War, Hasdrubal, and an Assassination', 'Hamilcar achieves significant territorial gains in Spain and in Africa after Rome’s victory in the First Punic War (237 - 226 BCE), but further progress is stymied by his death. In wake of Hamilar’s death, Hasdrubal, Hamilcar’s adopted son-in-law and alleged lover, takes control of the Barcid faction and expands Carthaginian gains through shrewd diplomacy, but is assassinated by the retainer of a foreign king. Finally, the terms of a revised treaty with Rome (226 BCE), which serve as a flashpoint for the rest of the book, are introduced.'),
    (21, '21-3', 'The Carthaginians Debate Hasdrubal’s Successor', 'The soldiers of the late Hasdrubal proclaim Hannibal commander and the people are expected to endorse the decision. It is recalled that Hasdrubal had personally summoned Hannibal as a young man to his camp. The Barcid faction pushes hard for Hannibal to succeed Hasdrubal but run into opposition from Hanno in the Carthignian assembly who is fearful of the consequences of giving so much power to such a prominent young man.'),
    (21, '21-4', 'Hannibal’s Character', 'Despite Hanno’s efforts, Hannibal is sent to Spain to lead the Barcid forces. Livy describes Hannibal’s physical traits and characteristics and is made out to be a super villain a la Catiline in Sallust’s Catilinarian Conspiracy.'),
    (21, '21-5', 'The Conquest of Iberia and the Battle of the River Tagus', 'Hannibal makes ready for war on Rome and reasons that an attack on the neural city of Saguntum in Iberia will provoke the Romans. Hoping to seem like he was forced into a conflict with Saguntum, he launches a campaign on all Iberian peoples who border Saguntum. He captures Cartala, the chief city of the Olcades. After wintering in Carthago Nova, Hannibal makes war against the Vaccaei, who unite with Olcaden exiles. The combined forces outnumber Hannibal and meet him at the River Tagus. There Hannibal lays a trap and easily defeats the Iberians.');

INSERT INTO commentary_chapter_sections (section_number, chapter_number, latin)
VALUES
    ('21-1-1', '21-1', 'in parte operis mei licet mihi praefari, quod in principio summae totius professi plerique sunt rerum scriptores, bellum maxime omnium memorabile quae unquam gesta sint me scripturum, quod Hannibale duce Carthaginienses cum populo Romano gessere'),
    ('21-1-2', '21-1', 'nam neque ualidiores opibus ullae inter se ciuitates gentesque contulerunt arma neque his ipsis tantum unquam uirium aut roboris fuit; et haud ignotas belli artes inter sese sed expertas primo Punico conferebant bello, et adeo uaria fortuna belli ancepsque Mars fuit ut propius periculum fuerint qui uicerunt.'),('21-1-3', '21-1', 'odiis etiam prope maioribus certarunt quam uiribus, Romanis indignantibus quod uictoribus uicti ultro inferrent arma, Poenis quod superbe auareque crederent imperitatum uictis esse.'),
    ('21-1-4', '21-1', 'fama est etiam Hannibalem annorum ferme nouem, pueriliter blandientem patri Hamilcari ut duceretur in Hispaniam, cum perfecto Africo bello exercitum eo traiecturus sacrificaret, altaribus admotum tactis sacris iure iurando adactum se cum primum posset hostem fore populo Romano.'),
    ('21-1-5', '21-1', 'angebant ingentis spiritus uirum Sicilia Sardiniaque amissae: nam et Siciliam nimis celeri desperatione rerum concessam et Sardiniam inter motum Africae fraude Romanorum, stipendio etiam insuper imposito, interceptam.'),
    ('21-2-1', '21-2', 'his anxius curis ita se Africo bello quod fuit sub recentem Romanam pacem per quinque annos, ita deinde nouem annis in Hispania augendo Punico imperio gessit ut appareret maius eum quam quod gereret agitare in animo bellum et,'),
    ('21-2-2', '21-2', 'si diutius uixisset, Hamilcare duce Poenos arma Italiae inlaturos fuisse qui Hannibalis ductu intulerunt.'),
    ('21-2-3', '21-2', 'mors Hamilcaris peropportuna et pueritia Hannibalis distulerunt bellum. medius Hasdrubal inter patrem ac filium octo ferme annos imperium obtinuit, flore aetatis,'),
    ('21-2-4', '21-2', 'uti ferunt, primo Hamilcari conciliatus, gener inde ob aliam indolem profecto animi adscitus et, quia gener erat, factionis Barcinae opibus, quae apud milites plebemque plus quam modicae erant, haud sane uoluntate principum, in imperio positus.'),
    ('21-2-5', '21-2', 'is plura consilio quam ui gerens, hospitiis magis regulorum conciliandisque per amicitiam principum nouis gentibus quam bello aut armis rem Carthaginiensem auxit.'),
    ('21-2-6', '21-2', 'ceterum nihilo ei pax tutior fuit; barbarus eum quidam palam ob iram interfecti ab eo domini obtruncat; comprensusque ab circumstantibus haud alio quam si euasisset uoltu, tormentis quoque cum laceraretur, eo fuit habitu oris ut superante laetitia dolores ridentis etiam speciem praebuerit.'),
    ('21-2-7', '21-2', 'cum hoc Hasdrubale, quia mirae artis in sollicitandis gentibus imperioque suo iungendis fuerat, foedus renouauerat populus Romanus ut finis utriusque imperii esset amnis Hiberus Saguntinisque mediis inter imperia duorum populorum libertas seruaretur.'),
    ('21-3-1', '21-3', 'Hasdrubalis locum haud dubia res fuit quin<am successurus esset;> praerogatiuam militarem qua extemplo iuuenis Hannibal in praetorium delatus imperatorque ingenti omnium clamore atque adsensu appellatus erat fauor etiam plebis sequebatur.'),
    ('21-3-2', '21-3', 'hunc uixdum puberem Hasdrubal litteris ad se accersierat, actaque res etiam in senatu fuerat. Barcinis nitentibus ut adsuesceret militiae Hannibal atque in paternas succederet opes Hanno,'),
    ('21-3-3', '21-3', 'alterius factionis princeps, ''et aequum postulare uidetur'' inquit, ''Hasdrubal, et ego tamen non censeo quod petit tribuendum.'''),
    ('21-3-4', '21-3', 'cum admiratione tam ancipitis sententiae in se omnes conuertisset, ''florem aetatis'' inquit, ''Hasdrubal, quem ipse patri Hannibalis fruendum praebuit, iusto iure eum a filio repeti censet; nos tamen minime decet iuuentutem nostram pro militari rudimento adsuefacere libidini praetorum.'),
    ('21-3-5', '21-3', 'an hoc timemus ne Hamilcaris filius nimis sero imperia immodica et regni paterni speciem uideat et, cuius regis genero hereditarii sint relicti exercitus nostri, eius filio parum mature seruiamus?'),
    ('21-3-6', '21-3', 'ego istum iuuenem domi tenendum sub legibus, sub magistratibus, docendum uiuere aequo iure cum ceteris censeo, ne quandoque paruus hic ignis incendium ingens exsuscitet.'''),
    ('21-4-1', '21-4', 'pauci ac ferme optimus quisque Hannoni adsentiebantur; sed, ut plerumque fit, maior pars meliorem uicit. missus Hannibal in Hispaniam primo statim aduentu omnem exercitum in se conuertit;'),
    ('21-4-2', '21-4', 'Hamilcarem iuuenem redditum sibi ueteres milites credere; eundem uigorem in uoltu uimque in oculis, habitum oris lineamentaque intueri. dein breui effecit ut pater in se minimum momentum ad fauorem conciliandum esset.'),
    ('21-4-3', '21-4', 'nunquam ingenium idem ad res diuersissimas, parendum atque imparandum, habilius fuit. itaque haud facile discerneres utrum imperatori an exercitui carior esset;'),
    ('21-4-4', '21-4', 'neque Hasdrubal alium quemquam praeficere malle ubi quid fortiter ac strenue agendum esset, neque milites alio duce plus confidere aut audere.'), 
    ('21-4-5', '21-4', 'plurimum audaciae ad pericula capessenda, plurimum consilii inter ipsa pericula erat. nullo labore aut corpus fatigari aut animus uinci poterat. caloris ac frigoris patientia par;'),
    ('21-4-6', '21-4', 'cibi potionisque desiderio naturali, non uoluptate modus finitus; uigiliarum somnique nec die nec nocte discriminata tempora;'),
    ('21-4-7', '21-4', 'id quod gerendis rebus superesset quieti datum; ea neque molli strato neque silentio accersita; multi saepe militari sagulo opertum humi iacentem inter custodias stationesque militum conspexerunt. uestitus nihil inter aequales excellens:'),
    ('21-4-8', '21-4', 'arma atque equi conspiciebantur. equitum peditumque idem longe primus erat; princeps in proelium ibat, ultimus conserto proelio excedebat.'),     
    ('21-4-9', '21-4', 'has tantas uiri uirtutes ingentia uitia aequabant, inhumana crudelitas, perfidia plus quam Punica, nihil ueri, nihil sancti, nullus deum metus, nullum ius iurandum, nulla religio.'),
    ('21-4-10', '21-4', 'cum hac indole uirtutum atque uitiorum triennio sub Hasdrubale imperatore meruit, nulla re quae agenda uidendaque magno futuro duci esset praetermissa.'),
    ('21-5-1', '21-5', 'ceterum ex quo die dux est declaratus, uelut Italia ei prouincia decreta bellumque Romanum mandatum esset,'),
    ('21-5-2', '21-5', 'nihil prolatandum ratus ne se quoque, ut patrem Hamilcarem, deinde Hasdrubalem, cunctantem casus aliquis opprimeret, Saguntinis inferre bellum statuit.'),
    ('21-5-3', '21-5', 'quibus oppugnandis quia haud dubie Romana arma mouebantur, in Olcadum prius fines—ultra Hiberum ea gens in parte magis quam in dicione Carthaginiensium erat—induxit exercitum, ut non petisse Saguntinos sed rerum serie finitimis domitis gentibus iungendoque tractus ad id bellum uideri posset.'),
    ('21-5-4', '21-5', 'Cartalam, urbem opulentam, caput gentis eius, expugnat diripitque; quo metu perculsae minores ciuitates stipendio imposito imperium accepere. uictor exercitus opulentusque praeda Carthaginem Nouam in hiberna est deductus.'),
    ('21-5-5', '21-5', 'ibi large partiendo praedam stipendioque praeterito cum fide exsoluendo cunctis ciuium sociorumque animis in se firmatis uere primo in Uaccaeos promotum bellum.'),
    ('21-5-6', '21-5', 'Hermandica et Arbocala, eorum urbes, ui captae. Arbocala et uirtute et multitudine oppidanorum diu defensa;'),
    ('21-5-7', '21-5', 'ab Hermandica profugi exsulibus Olcadum, priore aestate domitae gentis,'),
    ('21-5-8', '21-5', 'cum se iunxissent, concitant Carpetanos adortique Hannibalem regressum ex Uaccaeis haud procul Tago flumine agmen graue praeda turbauere.'),      
    ('21-5-9', '21-5', 'Hannibal proelio abstinuit castrisque super ripam positis, cum prima quies silentiumque ab hostibus fuit, amnem uado traiecit ualloque ita praeducto ut locum ad transgrediendum hostes haberent inuadere eos transeuntes statuit.'),
    ('21-5-10', '21-5', 'equitibus praecepit ut, cum ingressos aquam uiderent, adorirentur impeditum agmen; in ripa elephantos—quadraginta autem erant—disponit.'),       
    ('21-5-11', '21-5', 'Carpetanorum cum appendicibus Olcadum Uaccaeorumque centum milia fuere, inuicta acies si aequo dimicaretur campo.'),
    ('21-5-12', '21-5', 'itaque et ingenio feroces et multitudine freti et, quod metu cessisse credebant hostem, id morari uictoriam rati quod interesset amnis, clamore sublato passim sine ullius imperio qua cuique proximum est in amnem ruunt.'),
    ('21-5-13', '21-5', 'et ex parte altera ripae uis ingens equitum in flumen immissa, medioque alueo haudquaquam pari certamine concursum,'),
    ('21-5-14', '21-5', 'quippe ubi pedes instabilis ac uix uado fidens uel ab inermi equite, equo temere acto, peruerti posset, eques corpore armisque liber, equo uel per medios gurgites stabili, comminus eminusque rem gereret.'),
    ('21-5-15', '21-5', 'pars magna flumine absumpta; quidam uerticoso amni delati in hostes ab elephantis obtriti sunt.'),
    ('21-5-16', '21-5', 'postremi, quibus regressus in suam ripam tutior fuit, ex uaria trepidatione cum in unum colligerentur, priusquam in tanto pauore reciperent animos, Hannibal agmine quadrato amnem ingressus fugam ex ripa fecit uastatisque agris intra paucos dies Carpetanos quoque in deditionem accepit;'),
    ('21-5-17', '21-5', 'et iam omnia trans Hiberum praeter Saguntinos Carthaginiensium erant.');

INSERT INTO commentary_comments (section, comment_order, tag, comment)
VALUES
    ('21-1-1', 1, 'In parte operis...gessere', 'praefari introduces an indirect statement with me as the accsuative subject with scripturum (with esse supplied) as the main verb. Take praefari as the infinitive and me as an accusative subject.'),
    ('21-1-1', 2, 'quod…scriptores', 'relative clause referring proleptically to the substance of the indirect statement (i.e. the claim that he is writing about the greatest war of all time).'),
    ('21-1-1', 3, 'professi plerique sunt', 'a perfect, deponent indicative and the main verb of the relative clause.'),
    ('21-1-1', 4, 'rerum scriptores', 'i.e. other writers of history'),
    ('21-1-1', 5, 'gesta sint', 'subjunctive main verb in subordinate clause within indirect discourse (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-577.html" target="_blank">A&G §577</a>)'),
    ('21-1-1', 6, 'Hannibale duce', 'ablative absolute'),
    ('21-1-1', 7, 'gessere', 'archaic/poetic form of gesserunt (3rd, plural, perfect, indicative active) from gero, gerere, gessi, gestus.'),
    ('21-1-1', 8, 'quod', 'bellum is the antecedent.'),
    ('21-1-2', 1, 'opibus', 'in this case, opibus refers to “military or political resources”  (L&S s.v. ops, 1B).'),
    ('21-1-2', 2, 'his ipsis', 'datives of advantage (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-577.html" target="_blank">A&G §234</a>) with ipsis functioning as an intensifying pronoun (“in and of itself”).'),
    ('21-1-2', 3, 'propius periculum', 'typically an adjective, propius is here used in conjunction with the accusative as a preposition. The translation “closer to danger” is appropriate with the sense that the Romans (the eventual victors) were closer to destruction during this war than even the eventually-defeated Carthaginians (Walsh, 1985, pg. 121).'),
    ('21-1-2', 4, 'uirium aut roboris', 'partitive genitive with tantum'),
    ('21-1-2', 5, 'Mars', 'metonymy for “war” (L&S s.v. Mars II A).'),
    ('21-1-2', 6, 'fuerint', 'perfect active subjunctive in a result clause (adeo in main clause, ut + subjunctive in subordinate clause)'),
    ('21-1-2', 7, 'qui uicerunt', 'qui functions as the subject of the ut clause.'),
    ('21-1-3', 1, 'quam', 'take with the comparative maioribus.'),
    ('21-1-3', 2, 'inferrent...crederent', 'imperfect subjunctives in a quod clause of alleged reason(<a href="http://dcc.dickinson.edu/grammar/latin/causal-clauses" target="_blank">A&G 540</a>); introduces indirect statement.'),
    ('21-1-3', 3, 'Poenis', 's.c. indignantibus'),
    ('21-1-3', 4, 'imperitatum esse', 'impersonal here, although it is strongly implied that it was the Romans imposing this unjust rule.'),
    ('21-1-4', 1, 'fama est', 'introduces indirect speech'),
    ('21-1-4', 2, 'annorum ferme novem', 'novem is indeclinable, so it is here in the genitive modifying annorum. Both are genitives of quality (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-345.html" target="_blank">A&G §345</a>).'),
    ('21-1-4', 3, 'patri Hamilcari', 'blandientem (from blandior, iri, -, itus) takes the dative (patri Hamilcari) and introduces a purpose clause.'),
    ('21-1-4', 4, 'cum...sacrificaret', 'cum temporal clause (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-545.html" target="_blank">A&G §545</a>); subordinate clause in indirect statement usually take a subjunctive verb.'),
    ('21-1-4', 5, 'traiecturus', 'future active participle modifying the subject of sacrifaceret, Hamilcar and expressing purpose (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-499.html" target="_blank">A&G §499</a>).'),
    ('21-1-4', 6, 'admotum…adactum', 's.c. esse; still in indirect discourse introduced by fama est with Hannibalem as the subject of both. Altaribus is in the dative as the compound admotum takes the dative. (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-370.html" target="_blank">A&G §370</a>)'),
    ('21-1-4', 7, 'iure iurando adactum', 'the verb adigere with iure iurando is an idiom for being compelled to swear an oath (L&S s.v. adigo II B).'),
    ('21-1-4', 8, 'iure iurando...fore', 'starts an indirect statement with se as the accusative subject and fore (= futurum esse) as the infinitive, explaining the content of the oath sworn.'),
    ('21-1-5', 1, 'ingentis spiritus', 'genitive of quality (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-345.html" target="_blank">A&G §345</a>).'),
    ('21-1-5', 2, 'Sicilia Sardiniaque amissae', 'subject of angebant'),
    ('21-1-5', 3, 'nam', 'introduces an explanatory parenthetical clause which is an indirect statement expressing the thoughts of Hamilcar.'),
    ('21-2-1', 1, 'se', 'object of gessit. This construction is Latin idiom for expressing how an individual or group conducts themselves (L&S s.v. gero II B).'),
    ('21-2-1', 2, 'sub', 'with accusative can mean “after, just after, following” when referring to time (L&S s.v. sub II B).'),
    ('21-2-1', 3, 'novem annis', 'the ablative normally indicates a particular point in time (sometimes called “time at which” or “time within which”), Livy occasionally uses the ablative as if an accusative of duration (Woodcock §54).'),
    ('21-2-2', 1, 'augendo Punico imperio', 'gerund-replacing gerundive'),
    ('21-2-2', 2, 'ut appareret…bellum', 'appareret is impersonal and initiates indirect statement completed by eum and agitare.'),
    ('21-2-2', 3, 'quod gereret', 'eum (i.e. Hannibal) carries over as the subject of gereret'),
    ('21-2-2', 4, 'maius', 'neuter acc. singular modifying bellum.'),
    ('21-2-2', 5, 'si diutius vixissest', 'past contrary to fact conditional within indirect discourse, featuring a pluperfect subjunctive in the apodosis (if-clause) and future infinitive (i.e. the sentence’s main verb with Poenos as accusative subject) in the protasis (then-clause): “If he had lived longer…they would have” (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-589.html" target="_blank">A&G §589</a>)'),
    ('21-2-2', 6, 'qui', 'take Poenos as antecedent.'),
    ('21-2-2', 7, 'Italiae', 'locative case.'),
    ('21-2-4', 1, 'uti ferunt', 'Livy often employs fero to denote the relating of a story or report with a plural subject to refer to unspecified authors/Roman mythical traditions.'),
    ('21-2-4', 2, 'adscitus', 'here indicates adoption (L&S s.v. ascisco II A)'),
    ('21-2-4', 3, 'animi', 'subjective genitive with indolem'),
    ('21-2-5', 4, 'hospitiis magis regulorum…gentibus', 'an example of Livian variatio - hospitiis goes with regulorum and conciliandis with nouis gentibus.'),
    ('21-2-6', 5, 'nihilo', 'adverb related to nihil, meaning “in no way”.'),
    ('21-2-6', 6, 'haud alio quam si evasisset voltu', 'haud modifies alio...voltu and the entire phrase governs the comparative quam,'),
    ('21-2-6', 7, 'dolores', 'object of the ablative absolute superante laetitia.'),
    ('21-2-6', 8, 'ut…praebuerit', 'result clause.'),
    ('21-2-6', 9, 'ridentis', 'present active participle functioning as a substantive.'),
    ('21-2-7', 10, 'mirae artis', 'genitive of characteristic with an implied vir.'),
    ('21-2-7', 11, 'sollicitandis...iungendis', 'gerund-replacing gerundive'),
    ('21-3-1', 1, 'haud dubia res fuit', 'introduces the indirect question that follows, with dubia res fuit standing a verb of the head.'),
    ('21-3-1', 2, '<am successurus esset>', 'The brackets here indicate a lacuna (missing text in the manuscript). This reading is a conjecture by Walters (1929).'),        
    ('21-3-1', 3, 'delatus...appellatus erat', 'main verbs of the relative clause.'),
    ('21-3-1', 4, 'praerogatiuam militarem', 'proleptic object of sequebatur.'),
    ('21-3-2', 1, 'actaque res', 'an idiomatic phrase used to describe debate, particularly in a judicial setting (L&S s.v.  ago II D 9).'),
    ('21-3-2', 2, 'Barcinis nitentibus', 'ablative absolute introducing a purpose clause.'),
    ('21-3-2', 3, 'adsuesceret', 'construe with the dative.'),
    ('21-3-3', 4, 'tribuendum', 'passive periphrastic (s.c. esse) expressing obligation. See (link to periphrastics).'),
    ('21-3-4', 1, 'florem aetatis', 'proleptic indirect accusative subject with censet is the verb of head.'),
    ('21-3-4', 2, 'fruendum', 'a gerundive expressing purpose (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-500.html" target="_blank">A&G §500.4</a>), agreeing with florem.'),
    ('21-3-5', 1, 'videat…sint relicti …serviamus', 'subjunctive in fear clause; introduced by ne'),
    ('21-3-5', 2, 'hereditarii', 'in apposition to exercitus'),
    ('21-3-5', 3, 'cuius', 'the antecedent is eius'),
    ('21-3-5', 4, 'parum', 'adverb.'),
    ('21-3-6', 1, 'tenendum…docendum', 'gerundives with implied esse functioning as a passive periphrastic within indirect statement (insert link to periphrastics)'),       
    ('21-3-6', 2, 'domi', 'locative case'),
    ('21-4-1', 1, 'quisque', '“each”'),
    ('21-4-2', 2, 'redditum', 's.c. esse'),
    ('21-4-2', 3, 'credere', 'syncopated 3rd person plural perfect active form.'),
    ('21-4-2', 4, 'intueri', 'main verb in the indirect statement introduced by credere with ueteres milites as the accusative subject,'),
    ('21-4-2', 5, 'ad favorem conciliandum', 'gerund-replacing gerundive expressing purpose.'),
    ('21-4-3', 1, 'parendum atque imparandum', 'gerunds in apposition to res, so they are also objects of the preposition ad expressing purpose'),
    ('21-4-3', 2, 'discerneres', 'potential subjunctive that acts much like the apodosis of a present counterfactual condition that introduces an indirect question utrum…esset.'),
    ('21-4-4', 1, 'malle…confidere…audere', 'historical infinitives (A&G ) used in imitation of Sallust, for more see Woodcock §21.'),
    ('21-4-4', 2, 'quid', 'quid = aliquid'),
    ('21-4-4', 3, 'agendum esset', 'frequentative use of the subjunctive (Walsh, ad loc.) as part of the passive periphrastic.'),
    ('21-4-5', 1, 'plurimum…erat', 'erat is implied with both instances of plurimum.'),
    ('21-4-5', 2, 'audaciae...consilii', 'genitives of quality.'),
    ('21-4-5', 3, 'ad pericula capessenda', 'gerund-replacing gerundive expressing purpose.'),
    ('21-4-6', 1, 'cibi potionisque', 'take with modus'),
    ('21-4-7', 1, 'nullo…conspexerunt', 'notice the lack of coordinating conjunctions, a literary technique known as parataxis (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-268.html" target="_blank">A&G §268</a>).'),
    ('21-4-7', 2, 'id', 'refers to tempus'),
    ('21-4-7', 3, 'quod...superesset', 'relative clause of characteristic (<a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-535.html" target="_blank">A&G §535a</a>).'),
    ('21-4-10', 1, 'meruit', 'refers here to serving a military campaign (L&S s.v. mereo, II.C).'),
    ('21-4-10', 2, 'nulla re…praetermissa', 'ablative absolute'),
    ('21-4-10', 3, 'quae…esset', 'relative clause of characteristic'),
    ('21-5-1', 1, 'quo', 'Relatives are used more abundantly in Latin and in places where English may use a different construction. Here we might expect a demonstrative in English.'),
    ('21-5-2', 1, 'prolatandum', 'gerundive replacing gerund.'),
    ('21-5-2', 2, 'aliquis', 'Dropping ali after si, nisi, num, and ne is a convention as opposed to a hard and fast rule (Walsh 1985 129).'),
    ('21-5-3', 1, 'in parte magis quam dicione carthaginiensium', 'magis quam compares parte to dicione and Carthanginiensium is a genitive of possession to both. In other words, the Olcandes are in the land of, but not under the control of the Carthaginians.'),
    ('21-5-3', 2, 'quibus oppugnandis', 'quibus is a connecting relative (<a href="http://dcc.dickinson.edu/grammar/latin/relative-pronouns" target="_blank">A&G 303 2</a>).'),
    ('21-5-3', 3, 'rerum serie...posset', 'posset introduces uiderei as a complementary infinitive. Take with petisse and tractus.'),
    ('21-5-4', 1, 'quo', 'connecting relative (<a href="http://dcc.dickinson.edu/grammar/latin/relative-pronouns" target="_blank">A&G 303 2</a>)'),
    ('21-5-5', 1, 'ibi…bellum', 'the main kernel is promutum bellum. The gerundive pratiendo and the gerund replacing gerundive exolvendo are ablatives of means.'),
    ('21-5-5', 2, 'stipendioque praeterito', '“arrears of pay” (Walsh 1989)'),
    ('21-5-7', 1, 'ab Hermandica…iunxisset', 'the cum clause extends all the way back to ab Hermandica and takes profugi as its subject.'),
    ('21-5-7', 2, 'priore aestate domitae gentis', 'in apposistion to Olcadum.'),
    ('21-5-9', 1, 'cum prima', '“as soon as”.'),
    ('21-5-9', 2, 'invadere', 'take with statuit'),
    ('21-5-11', 1, 'invicta acies si aequo dimicaretur campo', 'The imperfect subjunctive is used in past unreal conditions is common on Livy and earlier Latin authors (Woodcock 199).'),
    ('21-5-13', 1, 'alveo', '“river bed” (L&S s.v. alveus II F).'),
    ('21-5-14', 1, 'Quippe ubi…fidens', 'i.e. quippe in quo, “since on the riverbed” (Walsh 1985 131).  c.f. <a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-535.html" target="_blank">A&G §535</a>. E. for more on the equivalent clause and its expression of causation.'),
    ('21-5-14', 2, 'uel...uel', 'contrasting the footsoldier and the cavalryman.'),
    ('21-5-14', 3, 'eques corpore amrisque liber', 'corpore armisque are ablatives of separation dependent on liber posset'),
    ('21-5-14', 4, 'gereret', 'potential subjunctive'),
    ('21-5-16', 1, 'quibus', 'take as a dative of reference with regressus.'),
    ('21-5-16', 2, 'reciperent', 'c.f. <a href="http://dcc.dickinson.edu/allen-greenough/Chapters/Chapter-550.html" target="_blank">A&G §550</a>');

COMMIT;