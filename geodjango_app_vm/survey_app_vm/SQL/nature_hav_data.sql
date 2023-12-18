-- GROUP NATURLIGA MARINA EKOSYSTEM
INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO10', 'Huvudtyper');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO20', 'Stränder');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO30', 'Biotopbeteckning efter bottentyp och djup');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO40', 'Särskilda typer baserat på organismer (se även Natura 2000-naturtyper och EUNIS)');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO50', 'Särskilda typer baserat på geomorfologi (se även Natura 2000-naturtyper)');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO60', 'Glo och flada - se även Natura 2000-naturtyper');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO70', 'Kompletterande biotopbeteckning - vegetation i grunda områden');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MO80', 'Komplement - syreförhållanden');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MA10', 'Huvudtyper');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MA20', 'Stränder');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MA30', 'Detaljerad biotopbeteckning efter bottentyp och djup');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_nat (section_code, category)
VALUES ('MA40', 'Särskilda typer baserat på organismer (se även Natura 2000-naturtyper och EUNIS)');


-- ATTRIBUTES
-- MO10 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO10'), 'MO11', 'grund mjukbotten', 'Marin miljo över mjuka bottnar inom den fotiska zonen.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO10'), 'MO12', 'grund hårdbotten', 'Marin miljo över hårda bottnar inom den fotiska zonen.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO10'), 'MO13', 'djup mjukbotten', 'Marin miljo över mjuka bottnar under den fotiska zonen.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO10'), 'MO14', 'djup hårdbotten', 'Marin miljo över hårda bottnar under den fotiska zonen.');

-- MO20 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO2', 'havsstrand', 'Marin miljo mellan högsta och lägsta vattenstånd.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO21', 'klippstrand', 'Strand som domineras av block, klippor och fast berg.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO22', 'stenstrand', 'Strand som domineras av sten.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO221', 'klapperstenstrand', 'Strand som domineras av klappersten.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO23', 'grusstrand', 'Strand som domineras av grus.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO231', 'skalgrusstrand', 'Strand som domineras av skalgrus.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO24', 'sandstrand', 'Strand som domineras av sand.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO25', 'finsedimentsstrand', 'Strand som domineras av lera och silt.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO20'), 'MO251', 'lerstrand', 'Strand som domineras av lera.');

-- MO30 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO311', 'mjukbottnar silt/lera, 0 m till 6 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO312', 'mjukbottnar silt/lera, 6 m till 15 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO313', 'mjukbottnar silt/lera, 15 m till 20 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO314', 'mjukbottnar silt/lera, 20 m till 30 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO315', 'mjukbottnar silt/lera, > 30 m', 'Mjuka bottnar med silt och lera under 30 m oberoende av organismsamhälle.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO331', 'skalgrusbotten', 'Botten som domineras av skalgrus.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO341', 'klippbottnar (0-30 m)', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO342', 'djupa klippbottnar (30-200 m)', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO30'), 'MO35', 'botten med hård lera', 'Hårdbotten som domineras av hård lera.');

-- MO40 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO41', 'musselbank', 'Enligt biogena rev som undergrupp till Natura-naturtypen 1170 rev.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO42', 'tångbälte', 'Havsbotten som till minst 25 procent domineras av tang (Fucus/Ascophyllum).');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO421', 'tareskog', 'Havsbotten som domineras av tare (Laminaria/Saccharina).');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO43', 'ålgräsäng', 'Havsbotten som domineras av ålgras.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO44', 'kvarn', 'Byggnadsverk vid vattendrag, huvudsakligen i syfte att mala mjöl.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO45', 'vattenkraftverk', 'Anläggning i syfte att omvandla vattnets lägesenergi till elenergi.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO46', 'bro', 'Byggnadsverk som byggts i syfte att leda trafik över ett korsande hinder.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO40'), 'MO47', 'fördämning', 'Dammbyggnad för uppdämning av vattennivån i vattendrag eller sjö.');

-- MO50 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO50'), 'MO51', 'bubbelrev', 'Kalkstrukturer bildade genom metangas som sipprar upp ur havsbotten.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO50'), 'MO52', 'lodytor', 'Lodytor i bred bemärkelse.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO50'), 'MO53', 'strömmar', 'Strommar i bred bemärkelse.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO50'), 'MA54', 'havsvik', 'Havsvikar i bred bemärkelse.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO50'), 'MA55', 'sund', 'Smalare vattenområde mellan två landmassor.');

-- MO60 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO60'), 'MO61', 'förstadium till flada', 'En exponerad havsvik som på grund av landhöjningen håller på att utvecklas mot en flada. Det finns någon form av troskel vid mynningen men vattenutbytet med havet ar fortfarande gott.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO60'), 'MO62', 'flada', 'En havsvik som på grund av landhöjningen håller på att avskiljas fran havet. Vattenutbytet hindras av en troskel, oftast bevuxen av vass och annan vattenvaxtlighet.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO60'), 'MO63', 'gloflada', 'En gloflada har ett mycket begransat men kontinuerligt vattenutbyte med havet. Mynningen ar grund och troskeln igenvuxen.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO60'), 'MO64', 'glo', 'En havsvik som avskilts från havet på grund av landhojningen. Havsvatten tränger in endast vid högvatten eller när höga vågor bildas i stormar.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO60'), 'MO65', 'glosjö', 'Insjö som bildats från havsvik som avskilts från havet på grund av landhöjningen. Saknar numera kontakt med havet.');

-- MO70 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO70'), 'MO71', 'övervattensvegetation', 'Strand eller grunt vattenområde med övervattensvegetation med vass och örtvegetation. Helofytvegetation.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO70'), 'MO72', 'dvärgvassar', 'Strand eller grunt vattenomrade med dvärgvassar.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO70'), 'MO73', 'högvassar', 'Strand eller grunt vattenområde med högvassar.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO70'), 'MO74', 'flytbladsvegetation', 'Vatten med flytbladsvegetation. Hydrofytvegetation.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO70'), 'MO75', 'långskottsvegetation', 'Strand eller grunt vattenområde med långskottsvegetation.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO70'), 'MO76', 'kortskottsvegetation', 'Strand eller grunt vattenområde med kortskottsvegetation.');

-- MO80 Categories
INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO80'), 'MO81', 'syresatt botten', 'Bottnar utan uppenbar syrebrist.');

INSERT INTO public.survey_app_vm_marint_ostersjon (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MO80'), 'MO82', 'ej syresatt botten', 'Bottnar som domineras av svavelbakterier. Har svart sediment etc. För syrebrist gäller < 2 ml syre/l vatten.');

-- MA10 Categories
INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA10'), 'MA11', 'grund mjukbotten', 'Marin miljo over mjuka bottnar inom den fotiska zonen.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA10'), 'MA12', 'grund hårdbotten', 'Marin miljo över hårda bottnar inom den fotiska zonen.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA10'), 'MA13', 'djup mjukbotten', 'Marin miljo over mjuka bottnar under den fotiska zonen.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA10'), 'MA14', 'djup hårdbotten', 'Marin miljo över hårda bottnar under den fotiska zonen.');

-- MA20 Categories
INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA2', 'havsstrand', 'Marin miljo mellan högsta och lägsta vattenstånd.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA21', 'klippstrand', 'Strand som domineras av block, klippor och fast berg.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA22', 'stenstrand', 'Strand som domineras av sten.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA221', 'klapperstenstrand', 'Strand som domineras av klappersten.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA23', 'grusstrand', 'Strand som domineras av grus.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA231', 'skalgrusstrand', 'Strand som domineras av skalgrus.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA24', 'sandstrand', 'Strand som domineras av sand.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA25', 'finsedimentsstrand', 'Strand som domineras av lera och silt.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA251', 'lerstrand', 'Strand som domineras av lera.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA20'), 'MA2611', 'högvassar', 'Strand som domineras av hogvassar - bladvass och säv.');

-- MA30 Categories
INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA311', 'mjukbottnar silt/lera, 0 m till 6 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA312', 'mjukbottnar silt/lera, 6 m till 15 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA313', 'mjukbottnar silt/lera, 15 m till 20 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA314', 'mjukbottnar silt/lera, 20 m till 30 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA315', 'mjukbottnar silt/lera > 30 m', 'Mjuka bottnar med silt och lera under 30 m oberoende av organismsamhalle.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA316', 'mjukbottnar silt/lera, >150 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA317', 'mjukbottnar silt/lera, 200 m till 700 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA321', 'sandbottnar, 0 m till 10 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA322', 'sandbottnar, 10 m till 20 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA323', 'sandbottnar, > 20 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA33', 'grus- och stenbottnar', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA331', 'skalgrusbotten', 'Botten som domineras av skalgrus.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA341', 'klippbottnar, 0 m till 30 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA342', 'djupa klippbottnar, 30 m till 200 m', 'Enligt Kustbiotoper i Norden.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA30'), 'MA35', 'botten med hård lera', 'Hårdbotten som domineras av hård lera.');

-- MA40 Categories
INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA40'), 'MA41', 'musselbank', 'Enligt biogena rev som undergrupp till Natura-naturtypen 1170 rev.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA40'), 'MA42', 'tångbälte', 'Havsbotten som till minst 25 procent domineras av tång (Fucus/Ascophyllum).');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA40'), 'MA421', 'tareskog', 'Havsbotten som domineras av tare (Laminaria/Saccharina).');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA40'), 'MA43', 'ålgräsäng', 'Havsbotten som domineras av ålgräs.');

INSERT INTO public.survey_app_vm_marint_atlantiskt (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_nat WHERE section_code = 'MA40'), 'MA44', 'korallrev', 'Rev som domineras av revbildande koraller (i Sverige endast Lophelia pertusa).');



--GROUP ANTROPOGENA MARINA EKOSYSTEM
INSERT INTO public.survey_app_vm_ecosystem_category_hav_ant (section_code, category)
VALUES ('AM10', 'Anläggningar (se även vissa biotopbeteckningar under Antropogen terrester miljo)');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_ant (section_code, category)
VALUES ('AM20', 'Antropogent påverkade bottnar');

INSERT INTO public.survey_app_vm_ecosystem_category_hav_ant (section_code, category)
VALUES ('AM30', 'Anlagd strand (se även lämpliga biotopbeteckningar under Antropogen terrester miljö)');


-- ATTRIBUTES
INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM10'), 'AM1', 'anläggning', 'Ospecificerad anläggning i havet.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM10'), 'AM11', 'konstgjord ö', 'Ö i havet som anlagd av människor.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM10'), 'AM12', 'båthamn', 'Anlagd plats for båtar, med skydd för hårt väder.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM10'), 'AM13', 'brygga', 'Utbyggnad i vatten från strand eller kaj, för bad eller angöring av båtar.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM10'), 'AM14', 'pir', 'En kraftig utbyggnad, vanligtvis av sten eller betong, som går från en strand ut i vattnet.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM10'), 'AM15', 'vågbrytare', 'Konstruktion i vattnet avsedd att skydda mot havsvågor och istryck.');

-- AM20
INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM21', 'muddrade bottnar', 'Bottnar som påtagligt förändrats av muddring.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM22', 'trålade bottnar', 'Bottnar som påtagligt förändrats av bottentrålning.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM23', 'frammande bottensubstrat', 'Bottnar med främmande bottenmaterial i allmänhet.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM231', 'anlagd botten', 'Bottnar som påtagligt förändrats genom konstruktioner och anläggningar.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM232', 'tipp', 'Bottnar som påtagligt förändrats genom tippning av muddermassor eller annat material.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM233', 'fiberbankar', 'Ansamling av träfiber som uppstått genom industriutsläpp.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM234', 'vrak', 'Fartyg eller annat större föremål som ligger sjunket eller står strandat.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM20'), 'AM235', 'artificiellt rev', 'En struktur av hårt material som människor har placerat på botten för att skapa ett rev.');

-- AM30
INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM30'), 'AM30', 'anlagd strand', 'Anlagd strand i allmänhet.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM30'), 'AM31', 'bank', 'Anlagd vall av jord, grus eller sten som bär en väg eller en järnväg, eller som anlagts i annat syfte.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM30'), 'AM32', 'strandskoning', 'Erosionsskydd med främmande material som lagts i strandkant i syfte att motverka erosion.');

INSERT INTO public.survey_app_vm_values_hav_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_hav_ant WHERE section_code = 'AM30'), 'AM33', 'kaj', 'Uppbyggd strandkant där båtar kan förtöja, lossa och lasta, eller för andra verksamheter för andra ändamål vid vattnet.');



--BIOTOP ÖVRIGT
INSERT INTO public.survey_app_vm_biotop_other (section_code, category, specific_code, biotopemark, description)
VALUES ('X', 'Övrig', 'X01', 'förstudie - ej fastställd biotop', 'Biotop har ej kunnat bestämmas i samband med förstudie.');
