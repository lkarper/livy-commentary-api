BEGIN;

TRUNCATE 
    commentary_chapter_sections
    RESTART IDENTITY CASCADE;

SET CLIENT_ENCODING to 'utf8';

INSERT INTO commentary_chapter_sections (section_number, chapter_number, latin)
VALUES
    ('21-1-1', '21-1', 'in parte operis mei licet mihi praefari, quod in principio summae totius professi plerique sunt rerum scriptores, bellum maxime omnium memorabile 
quae unquam gesta sint me scripturum, quod Hannibale duce Carthaginienses cum populo Romano gessere'),
('21-1-2', '21-1', 'nam neque ualidiores opibus ullae inter se ciuitates gentesque contulerunt arma neque his ipsis tantum unquam uirium aut roboris fuit; et haud ignotas belli artes inter sese sed expertas primo Punico conferebant bello, et adeo uaria fortuna belli ancepsque Mars fuit ut propius periculum fuerint qui uicerunt.'),('21-1-3', '21-1', 'odiis etiam prope maioribus certarunt quam uiribus, Romanis indignantibus quod uictoribus uicti ultro inferrent arma, Poenis quod superbe auareque crederent imperitatum uictis esse.'),
('21-1-4', '21-1', 'fama est etiam Hannibalem annorum ferme nouem, pueriliter blandientem patri Hamilcari ut duceretur in Hispaniam, cum perfecto Africo bello exercitum eo traiecturus sacrificaret, altaribus admotum tactis sacris iure iurando adactum se cum primum posset hostem fore populo Romano.'),
('21-1-5', '21-1', 'angebant ingentis spiritus uirum Sicilia Sardiniaque amissae: nam et Siciliam nimis celeri desperatione rerum concessam et Sardiniam inter motum Africae fraude Romanorum, stipendio etiam insuper imposito, interceptam.'),
('21-2-1', '21-2', 'his anxius curis ita se Africo bello quod fuit sub recentem Romanam pacem per quinque annos, ita deinde nouem annis in Hispania augendo Punico imperio gessit ut appareret maius eum quam quod gereret agitare in animo bellum et,'),
('21-2-2', '21-2', 'si diutius uixisset, Hamilcare duce Poenos arma Italiae inlaturos fuisse qui Hannibalis ductu intulerunt.'),
('21-2-3', '21-2', 'mors Hamilcaris peropportuna et pueritia Hannibalis distulerunt bellum. medius Hasdrubal inter patrem ac filium octo ferme annos imperium obtinuit, flore aetatis,'),
('21-2-4', '21-2', 'uti ferunt, primo Hamilcari conciliatus, gener inde ob aliam indolem profecto animi adscitus et, quia gener erat, factionis Barcinae opibus, quae 
apud milites plebemque plus quam modicae erant, haud sane uoluntate principum, in imperio positus.'),
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
('21-4-7', '21-4', 'id quod gerendis rebus superesset quieti datum; ea neque molli strato neque silentio accersita; multi saepe militari sagulo opertum humi iacentem 
inter custodias stationesque militum conspexerunt. uestitus nihil inter aequales excellens:'),
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

COMMIT;