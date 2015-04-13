-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 12. dub 2015, 15:16
-- Verze serveru: 5.6.21
-- Verze PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `cinema`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `coming`
--

CREATE TABLE IF NOT EXISTS `coming` (
`id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8_czech_ci NOT NULL,
  `picture` varchar(254) COLLATE utf8_czech_ci NOT NULL,
  `description` text COLLATE utf8_czech_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `coming`
--

INSERT INTO `coming` (`id`, `name`, `picture`, `description`, `date`) VALUES
(1, 'Jak vycvičit draka 2', 'how-to-train-your-dragon-2', '<p>Ostrov Blp býval místem, kde Vikingové ve dne v noci bojovali s draky. Pak však mladý snílek Škyťák vycvičil draka Bezzubku, spřátelil se s ním a hlavně všem vysvětlil, že lidé a draci mohou žít v harmonii. Ještě důležitější bylo, že film Jak vycvičit draka se stal jedním z nejlepších a nejúspěšnějších počinů studia DreamWorks Animation, které se proto rozhodlo, že nejen Shrek, Kung Fu Panda či Madagaskar si zaslouží pokračování, a natočilo „dračí“ dvojku.</p>\r\n<p>\r\nPříběh poskočil o pět let dopředu a z Blpu se stal v mezidobí dračí ráj, kde se lidé a draci navzájem respektují a mají se rádi. Škyťákova největší kamarádka Astrid je hvězdou oblíbených dračích závodů, ve kterých hravě poráží ostatní vikinské teenagery, zatímco Škyťák dává přednost osamělým spanilým letům s Bezzubkou, během nichž mapují neznámá území a objevují nové světy a nové draky. </p>\r\n<p>Jedno z jejich dobrodružství je přivede do těžko přístupné ledové jeskyně, která je domovem stovky neznámých divokých draků. Taky se zde setkají s tajemnou Dračí jezdkyní, z které se vyklube Škyťákova dávno ztracená matka Valka. Na láskyplné objetí matky se synem ale není čas, protože nad soužitím lidí a draků se stahují mračna, která se přihnala díky Dragovi, mocichtivým a samozvaným „dračím bohem“, kterému slouží nafoukaný lovec draků Eret.</p>\r\n<p>Tihle dva představují nebezpečí, se kterým sám Škyťák s Bezzubkou nic nezmůžou, a tak dají dohromady starou partu, do níž kromě Astrid patří i Tlamoun, Snoplivec, Rybinoha a dvojčata Ťafan a Rafana. Spolu s nimi se ale budou muset mocnému nepříteli postavit i Škyťákův otec, vikinský náčelník Kliďas Velikán a především jeho matka Valka. Naučit táhnout tenhle nesourodý spolek za jeden provaz bude nesmírně obtížné. Bez toho ale nebudou mít obyvatelé Blpu sebemenší šanci.</p>', '2014-06-13'),
(2, 'Běž, chlapče, běž', 'bez-chlapce-bez', '<p>Útěkem z varšavského ghetta se na jaře roku 1942 pro osmiletého židovského chlapce Srulika Fridmana začíná dlouhá cesta za svobodou, plná strachu, útrap a neustálého boje o holý život. Jen o vlásek unikne zastřelení a pod nově přijatou identitou polského sirotka Jurka se mu podaří ukrýt se na vsi, kde za nocleh a trochu jídla vypomáhá místním sedlákům. Jednoho dne v době žní mu mlátička poraní ruku natolik, že není jiné pomoci, než amputace, ale ani to Srulika nezlomí. Sílu mu dodává i přátelství vesnickým farářem a nová (katolická) víra, která pomalu překrývá jeho původní vyznání. O to větším šok zažívá, když se po osvobození země proti své vůli dostává do židovského sirotčince, kde zažívá všeobecné opovržení a těžkou šikanu. Reaguje po svém - útěkem. Dostává se až do svého rodného městečka, kde doufá v setkání s někým ze své rodiny. Po marném čekání se rozhoduje k návratu do dětského domova a z úcty k mrtvým předkům se znovu stává Židem.</p>\r\n<p>Film je inspirován skutečným osudem Yorama Fridmana, který se v něm na konci objeví jako starý muž, obklopený svými šesti vnoučaty.</p>', '2014-07-03'),
(3, 'Všechny cesty vedou do hrobu', 'vsechny-cesty-vedou-do-hrobu', '<p>Jak může normální člověk přežít na místě, kde Zubatá číhá doslova na každém kroku? A jak tam může přežít chronický posera s panickou hrůzou ze smrti? Stvořitel komediálního hitu Méďa, Seth MacFarlane protentokrát odhodil měkoučký plyš a v další pekelně zábavné jízdě vám naservíruje příběh, díky němuž poznáte pravý význam slovního spojení „ukrutná sranda“. </p>\r\n<p>Albert (Seth MacFarlane) se protlouká jako nepříliš úspěšný pasák ovcí, bydlí u rodičů a právě dostal kopačky od okaté Louise (Amanda Seyfried), které vadí jeho celoživotní zbabělost. Ke své smůle totiž žije v době, kdy se každý druhý konflikt řeší soubojem na pistole, a on přitom vůbec neumí střílet. I na notorického outsidera se ale někdy může usmát štěstí. To Albertovo se právě přistěhovalo do jeho města, jmenuje se Anna (Charlize Theron) a nejen že trefí deset terčů z deseti, ale navíc má s Albertem svatou trpělivost a nezdolné odhodlání ho to taky naučit. Pro Alberta je „studium střelby“ životně důležité, protože se porafal s kníratým objevem (Neil Patrick Harris) své bejvalky a velmi neuváženě ho vyzval na souboj. Vyhráno ale mít nebude, ani když náhodou vyhraje. Anna, která pro něj má čím dál větší slabost, je totiž stále ještě vdaná za nejproslulejšího pistolníka široko daleko (Liam Neeson). A tomu se rodící se vztah mezi vlastní ženou a ovčákem pochopitelně vůbec nezamlouvá.</p>', '2014-06-12');

-- --------------------------------------------------------

--
-- Struktura tabulky `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(11) NOT NULL,
  `given` varchar(254) COLLATE utf8_czech_ci NOT NULL,
  `sur` varchar(254) COLLATE utf8_czech_ci NOT NULL,
  `amount` int(6) NOT NULL,
  `movie` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `customer`
--

INSERT INTO `customer` (`id`, `given`, `sur`, `amount`, `movie`) VALUES
(6, 'Patrik', 'Novák', 10, 3),
(7, 'Patrik', 'Novák', 10, 3),
(8, 'David', 'Kubáč', 5, 6);

-- --------------------------------------------------------

--
-- Struktura tabulky `program`
--

CREATE TABLE IF NOT EXISTS `program` (
`id` int(11) NOT NULL,
  `name` varchar(254) COLLATE utf8_czech_ci NOT NULL,
  `picture` varchar(254) COLLATE utf8_czech_ci NOT NULL,
  `description` text COLLATE utf8_czech_ci NOT NULL,
  `theater` int(11) NOT NULL,
  `remainingSeets` int(3) NOT NULL,
  `price` int(3) NOT NULL,
  `lenght` int(4) NOT NULL,
  `time` varchar(254) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `program`
--

INSERT INTO `program` (`id`, `name`, `picture`, `description`, `theater`, `remainingSeets`, `price`, `lenght`, `time`) VALUES
(1, 'Cesta ven', 'cesta-ven', '<p>CESTA VEN JE PŘÍBĚHEM MLADÉ ŽENY, KTERÁ BOJUJE O OBYČEJNĚ ŠŤASTNÝ ŽIVOT.</p>\r\n<p>Naráží však na předsudky společnosti a s nimi spojené překážky; je Romka. Těžko se jí daří obstát v dnešním světě, v němž díky globalizaci a finanční krizi zmizela zejména pro Romy jak vyhlídka na práci, tak na důstojné bydlení. Hrdinka filmu bojuje s materiálními problémy, s pocitem opovržení, ale také s vlastní determinací. Kde hledat pomoc? Úřady nastavily ve jménu úspor pravidla vylučování ze systému sociálních podpor.</p>\r\n<p>Romská soudržnost také naší hrdince nepomůže, jelikož přestala existovat: všichni tonou v dluzích, vydáni na pospas lichvářům a exekutorům. Každý hledá cestu, jak přežije on sám. Ani otec nemůže pomoci, nemá již deset let práci, finanční potíže jej přivedly do ghetta a matka zemřela již dávno. Film Cesta ven scenáristy a režiséra Petra Václava bude v rámci prestižní přehlídky nezávislých filmů uveden na MFF v Cannes 2014. Myšlenka na tento film se poprvé objevila\r\npočátkem ledna 2012 a samotné natáčení probíhalo v únoru a březnu 2013. Petr Václav našel předobraz příběhu Žanety a Davida na návštěvě u svých přátel. A pak jej doplňoval o životní reálie dalších lidí, se kterými se potkával.</p>', 5, 100, 111, 103, '11:00, 14:00, 17:00, 20:00'),
(2, 'Galapágy 3D: Zázraky přírody', 'galapagy-3d-zazrak-prirody', '<p>Filmová výprava na místo, jaké nemá nikde jinde obdoby. Galapágy, dlouho zcela ukryté před světem, jsou posledním nedotčeným a skutečným rájem na planetě Zemi. V panenské přírodě nad hladinou i pod ní zde žije řada unikátních a fascinujících zvířat. A hlavně za nimi zamíří v úchvatném 3D zpracování a s českým dabingem další z řady velkoformátových dokumentů kina IMAX s názvem Galapágy 3D: Zázraky přírody. Na filmu spolupracoval známý přírodovědec David Attenborough.\r\n</p>\r\n<p>V nekonečných vodách Pacifiku leží jeden ze zázraků přírody: Galapágy. Magické místo, kterému se nic nevyrovná, sopečné souostroví, kde našla domov neuvěřitelná směsice živočichů. Galapágy změnily náhled lidstva na samotnou přírodu a ukazují sílu evoluce, jejíž zákonitosti zde zkoumal Charles Darwin. </p>', 3, 150, 99, 40, '11:00, 13:30, 16:00, 18:30, 21:00'),
(3, 'Sousedi', 'sousedi', '<p>„Bydlíme vedle pekla.“ Tuhle větu si pravidelně opakují hrdinové drsné komedie Sousedi, kteří žili na idylickém předměstí, než se o dům dál nastěhovali milí, mladí, zábavní a bohužel taky extrémně hluční vysokoškoláci. Režisér úspěšných Kopaček Nicholas Stoller natočil komedii, která názorně ukazuje, jak zatočit s nepřizpůsobivými sousedy. Jeho návod ale pro jistotu nezkoušejte, mohlo by vás to ve finále dost bolet.Mac (Seth Rogen) a Kelly (Rose Byrne) jsou hrdými rodiči malé holčičky a tak nějak smíření s tím, že pro ně už skončily divoké večírky a že jediné špeky, které mají, jsou ty na břiše. Žijí v útulném domečku v tiché ulici a pomalu se připravují na krizi středního věku. Když si sousední dům pronajmou vysokoškoláci v čele s vyrýsovaným hezounem Teddym (Zac Efron), zavětří sice nebezpečí, ale zprvu se rozhodnou pro přátelský přístup, k němuž bude patřit i slib dodržování nočního klidu a závazek nevolat hned poldy, kdyby se to náhodou někdy s pařením trochu zvrtlo. Jenže už druhá pořádná noční jízda všechny ušlechtilé závazky rozmetá a mezi oběma domy se rozzuří otevřená válka, ve které jsou všechny zbraně povolené. Na první pohled by se mohlo zdát, že unavení rodiče nemají proti rozjetým studentům sebemenší šanci, jenže i Mac a Kelly byli „kdysi“ pařmeni a z té doby si pamatují na spoustu dost nepěkných triků.</p>', 2, 440, 120, 96, '11:00, 15:00, 19:30'),
(4, 'Zakázané uvolnění', 'zakazane-uvolneni', '<p>Natáčení nového filmu režiséra Jana Hřebejka Zakázané uvolnění definitivně skončilo a brilantní konverzační komedie na motivy úspěšné divadelní hry Petra Kolečka už vzbudila mezinárodní pozornost. Na základě devítiminutové ukázky byl film pozván na festival CentEast (www.centeast.eu), v jehož rámci se již popáté v sekci CentEast Market prezentovaly vybrané filmy ve stavu „work in progress“. Zakázané uvolnění je jediným českým filmem, kterému se dostalo této pocty. Do programu prezentační sekce středoevropských kinematografií byly zařazeny ukázky z celkem dvaceti vznikajících filmů, vedle Hřebejka také Zanussiho, Smarzowského, Caranfila a dalších výtečných režisérů. Celá kolekce byla promítnuta 18. října ve Varšavě, jako součást 9. ročníku CentEast Market a místní distribuční společnosti velmi zaujala. V současné době se hovoří o distribuci v Polsku, přestože finální podoba filmu Zakázané uvolnění samozřejmě ještě není známa.</p>\r\n<p>Ukázka z nového Hřebejkova filmu byla prezentována také 20. října v Moskvě v rámci sekce the Project For Tomorrow a v dubnu 2014 je v plánu promítání v Pekingu na Beijing Film Market.</p>', 1, 300, 129, 77, '10:00, 15:30, 21:00'),
(5, 'Zloba – Královna černé magie', 'zloba-kralovna-cerne-magie', '<p>Snímek Zloba – Královna černé magie vypráví dosud nezpracovaný příběh legendární zlé královny z klasického snímku společnosti Disney Šípková Růženka z roku 1959, a seznamuje diváky s její zradou, která nakonec způsobila, že se její kdysi čisté srdce proměnilo v kámen.</p>\r\n<p>Královna Zloba, hnaná touhou po pomstě a urputnou snahou udržet si trůn, uvrhne na novorozenou dcerku lidského krále, Auroru, krutou kletbu. Jak princezna roste, ocitá se přímo v samém středu narůstajícího konfliktu mezi lesním královstvím, které si zamilovala, a lidským královstvím, ze kterého pochází. Zloba si uvědomuje, že princezna může být klíčem k míru mezi oběma říšemi a je tak nucena k nemilosrdným činům, které oba světy navždy změní.</p>', 1, 300, 100, 97, '12:30, 18:00'),
(6, 'Hvězdy nám nepřály', 'hvezdy-nam-nepraly', '<p>Hazel a Gus jsou dva výjimeční teenageři, které spojuje kousavý humor, pohrdání konvencemi a především láska, co s nimi cloumá. Jejich vztah je o to neobvyklejší, že se seznámili a zamilovali během setkávání na sezeních podpůrné skupiny pro boj s rakovinou. </p>\r\n<p>Hazel Grace Lancasterové (Shailene Woodley) je šestnáct let. Má ráda (a zároveň toleruje) své někdy až příliš starostlivé rodiče a právě se zakoukala do mladíka jménem Gus Waters (Ansel Elgort), který se na oplátku zamiloval do ní. Jak se sbližují, Hazel a Gus společně prožívají své obavy vyplývající z jejich zdravotních problémů a zároveň sdílí lásku ke knihám, včetně Hazelina oblíbeného románu Císařský neduh. Mnohokrát se marně snažila spojit s autorem knihy, samotářským Peterem Van Houtenem (Willem Dafoe). Když se Gusovi podaří Van Houtena zkontaktovat, spisovatel je oba nečekaně pozve do Amsterdamu. Gus je rozhodnutý vzít Hazel na cestu, aby našla odpovědi na všechny otázky, které kdy ke knize měla. Ale odpovědi, které hledá, nepřichází od Petera Van Houtena. Přichází z velkého dobrodružství, které Hazel zažije s někým, koho se nebojí milovat a kdo jim oběma dal něco, co Hazel nazývá „Malou věčností – nekonečnem mezi sečtenými dny.“</p>\r\n<p>Film Hvězdy nám nepřály (2014) je adaptací světového bestselleru Johna Greena, který vypráví o tom, jak zábavné, vzrušující a tragické je žít a být zamilovaný. Román byl vydán v roce 2012 a obsadil první místo žebříčku bestsellerů New York Times. Úspěch slaví kniha i v Česku - v největší knižní anketě českého internetu, kterou každoročně pořádá portál Databáze knih.cz. se umístila na prvním místě v kategorii Kniha roku a vyhrála i kategorii Novinka roku.</p>', 2, 445, 130, 125, '13:00, 19:00'),
(7, 'Loft', 'loft', '<p>Architekt Matthias seznámí své čtyři dlouholeté přátele s možností pronajmout si prostory v budově u přístavu a navrhne vybudovat luxusní loftový apartmán. Pro mladé muže je to příležitost, kam si vodit své přítelkyně, aniž by riskovali hotelové účty, které by museli tajit před svými manželkami. Od loftu mají klíče jenom oni. </p>\r\n<p>Přátelé se setkávají na rodinných oslavách a při jiných příležitostech včetně manželek a dětí. Při jedné večeři se Willem, který má sklon k alkoholu, opije a málem před ženami svými narážkami vyzradí jejich tajemství. Při návštěvě veletrhu v Düsseldorfu se Matthias seznámí se Sárou Lunterovou, se kterou udržuje poměr následně i v Holandsku. Dívka mu ale dělá problémy a Matt, aby zachránil manželství, jí oznámí, že se s ní rozchází. Ráno je dívka nalezena v loftu zavražděná.\r\n</p>\r\n<p>Sejdou se všichni a řeší, co dál. Nikdo z přátel nechce, aby se jejich zálety prozradily. Začnou se mezi sebou hádat a najevo vychází další věci. Sjetý Tom znásilnil v loftu mladou dívku a vše museli řešit jeho bratr Bart a Matthias. Robbie, další z přátel a spořádaný manžel, který tvrdil, že do bytu nikdy nebude chodit, ale měl klíče jako ostatní, nainstaloval kamery a hrátky svých přátel nahrával na diskety. Rob ukáže přátelům nahrávky, na kterých si Matt užívá s jejich manželkami a přítelkyněmi. Jejich rozhodnutí je jednoznačné, Matthias je vinen a tak vše musí brát i policie. O to se postarají. Probíhá vyšetřování policie, ale nakonec je všechno úplně jinak.</p>', 4, 250, 120, 108, '12:30, 17:30, 22:30'),
(8, 'Na hraně zítřka', 'na-hrane-zitrka', '<p>Příběh filmu se odehrává v blízké budoucnosti. Mimikové, hmyzu podobní mimozemšťané, vytrvale útočí na Zemi a mění velká města v hromadu sutin s milióny lidských obětí. Žádná armáda na světě není schopna odolat rychlosti, brutalitě ani zdánlivé předvídavosti mimických bojovníků či jejich telepaticky komunikujících velitelů. Nyní však armády celého světa spojily své síly k poslednímu zoufalému útoku proti mimozemským hordám. Podplukovník Bill Cage (Cruise), který se nikdy nezúčastnil ani jediné bitvy, je náhle degradován a poté je bez přípravy a s mizernou výzbrojí nasazen do téměř sebevražedné akce. Cage je během několika minut zabit, ale před svou smrtí se mu podaří zabít Alphu. Jakýmsi zázrakem opět ožívá na začátku stejného proklatého dne a musí znovu bojovat a umřít... a znovu a znovu. Přímým fyzickým kontaktem s mimozemšťanem se dostal do časové smyčky, ve které je odsouzen opakovaně prožívat stále stejnou bitvu.\r\nV každé další časové smyčce je však Cage otrlejší, zkušenější a mazanější a v boji proti Mimikům dokáže své rozvíjející se schopnosti lépe využívat. V boji mu po boku stojí i příslušnice zvláštních jednotek Rita Vrataski (Blunt), která pustoší řady Mimiků více než kdokoliv z pozemšťanů. Každá opakující se bitva proti mimozemšťanům je pro Cage a Ritu příležitostí pro nalezení klíče k vyhlazení vetřelců a záchraně Země.</p>', 4, 250, 130, 113, '10:00, 15:00, 20:00');

-- --------------------------------------------------------

--
-- Struktura tabulky `theater`
--

CREATE TABLE IF NOT EXISTS `theater` (
`id` int(11) NOT NULL,
  `label` varchar(10) COLLATE utf8_czech_ci NOT NULL,
  `seets` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `theater`
--

INSERT INTO `theater` (`id`, `label`, `seets`) VALUES
(1, 'A', 300),
(2, 'B', 450),
(3, 'C', 150),
(4, 'D', 250),
(5, 'E', 100);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `coming`
--
ALTER TABLE `coming`
 ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `program`
--
ALTER TABLE `program`
 ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `theater`
--
ALTER TABLE `theater`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `coming`
--
ALTER TABLE `coming`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pro tabulku `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pro tabulku `program`
--
ALTER TABLE `program`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pro tabulku `theater`
--
ALTER TABLE `theater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
