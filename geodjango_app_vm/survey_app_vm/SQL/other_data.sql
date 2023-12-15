-- GROUP CLASSIFICATION (NATURVÄRDESTRÄD)
INSERT INTO public.survey_app_vm_group_naturvardestrad ("group") VALUES ('gammal träd');
INSERT INTO public.survey_app_vm_group_naturvardestrad ("group") VALUES ('högstubbar och lågor');
INSERT INTO public.survey_app_vm_group_naturvardestrad ("group") VALUES ('växtsätt');
INSERT INTO public.survey_app_vm_group_naturvardestrad ("group") VALUES ('ekologisk funktion');
INSERT INTO public.survey_app_vm_group_naturvardestrad ("group") VALUES ('element och strukturer');
INSERT INTO public.survey_app_vm_group_naturvardestrad ("group") VALUES ('artförekomster');
INSERT INTO public.survey_app_vm_group_naturvardestrad ("group") VALUES ('annat');

-- GROUP ATTRIBUTES
-- 1
INSERT INTO public.survey_app_vm_gamla_grovatrad_haltrad (attributes, group_id_id) VALUES ('gammalt träd', 1);
INSERT INTO public.survey_app_vm_gamla_grovatrad_haltrad (attributes, group_id_id) VALUES ('mycket gammalt träd', 1);
INSERT INTO public.survey_app_vm_gamla_grovatrad_haltrad (attributes, group_id_id) VALUES ('grovt trad', 1);
INSERT INTO public.survey_app_vm_gamla_grovatrad_haltrad (attributes, group_id_id) VALUES ('jätteträd', 1);
INSERT INTO public.survey_app_vm_gamla_grovatrad_haltrad (attributes, group_id_id) VALUES ('hålträd', 1);
INSERT INTO public.survey_app_vm_gamla_grovatrad_haltrad (attributes, group_id_id) VALUES ('grovt hålträd', 1);

-- 2
INSERT INTO public.survey_app_vm_hogstubbar_lagor (attributes, group_id_id) VALUES ('grov låga', 2);
INSERT INTO public.survey_app_vm_hogstubbar_lagor (attributes, group_id_id) VALUES ('grov högstubbe', 2);

-- 3
INSERT INTO public.survey_app_vm_vaxtsatt (attributes, group_id_id) VALUES ('avvikande växtsätt', 3);
INSERT INTO public.survey_app_vm_vaxtsatt (attributes, group_id_id) VALUES ('hamlat aldre trad', 3);
INSERT INTO public.survey_app_vm_vaxtsatt (attributes, group_id_id) VALUES ('stor utvecklad spärrgrenig krona', 3);
INSERT INTO public.survey_app_vm_vaxtsatt (attributes, group_id_id) VALUES ('påtagligt krumt', 3);
INSERT INTO public.survey_app_vm_vaxtsatt (attributes, group_id_id) VALUES ('påtagligt senvuxet', 3);
INSERT INTO public.survey_app_vm_vaxtsatt (attributes, group_id_id) VALUES ('påtagligt platt krona', 3);

-- 4
INSERT INTO public.survey_app_vm_ekologisk_funktion (attributes, group_id_id) VALUES ('särskild betydelse för pollinatörer', 4);
INSERT INTO public.survey_app_vm_ekologisk_funktion (attributes, group_id_id) VALUES ('riklig mängd bär eller annan frukt av särskild betydelse för födosökande fåglar', 4);
INSERT INTO public.survey_app_vm_ekologisk_funktion (attributes, group_id_id) VALUES ('särskild betydelse for att skapa mångfald i utarmat landskap', 4);

-- 5
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('strukturer av särskild betydelse för biologisk mångfald', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('påtaglig mängd tickor', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('påtaglig mängd död ved', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('tydlig forekomst av mulm', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('tydliga savflöden', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('påtaglig mängd eller storlek på knotor', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('brandljud', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('kraftig sockel', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('bohål', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('rovfågelsbo', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('avvikande barkstruktur som tyder på hög ålder', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('grov bark', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('pansarbark', 5);
INSERT INTO public.survey_app_vm_element_strukturer (attributes, group_id_id) VALUES ('silverbark', 5);

-- 6
INSERT INTO public.survey_app_vm_artforekomst (attributes, group_id_id) VALUES ('livsmiljö för värdearter', 6);
INSERT INTO public.survey_app_vm_artforekomst (attributes, group_id_id) VALUES ('livsmiljö för rödlistade arter', 6);
INSERT INTO public.survey_app_vm_artforekomst (attributes, group_id_id) VALUES ('livsmiljö för fridlysta arter', 6);

-- 7
INSERT INTO public.survey_app_vm_annat (attributes, group_id_id) VALUES ('annat kannetecken', 7);
INSERT INTO public.survey_app_vm_annat (attributes, group_id_id) VALUES ('anges ej', 7);




-- GROUP CLASSIFICATION (VÄRDEELEMENT)
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('berg och sten');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('blommor');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('buskar');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('jord');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('kulturlandskap');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('myr');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('strand');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('träd');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('vatten');
INSERT INTO public.survey_app_vm_group_vardeelement ("group") VALUES ('övrigt');

-- GROUP ATTRIBUTES
-- 1 Berg och sten
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('berghäll', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('bergshylla', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('block', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('blockhav', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('brant', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('grotta', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('hällkar', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('jättegryta', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('kalkstenshäll', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('kalktuff', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('karstspricka', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('klapperstensfält', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('klippa', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('lodyta', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('rauk', 1);
INSERT INTO public.survey_app_vm_berg_sten (attributes, group_id_id) VALUES ('sten', 1);

-- 2 Blommor
INSERT INTO public.survey_app_vm_blommor (attributes, group_id_id) VALUES ('blommande buskar', 2);
INSERT INTO public.survey_app_vm_blommor (attributes, group_id_id) VALUES ('blommande träd', 2);
INSERT INTO public.survey_app_vm_blommor (attributes, group_id_id) VALUES ('blomrikedom', 2);

-- 3 Buskar
INSERT INTO public.survey_app_vm_buskar (attributes, group_id_id) VALUES ('buskar', 3);
INSERT INTO public.survey_app_vm_buskar (attributes, group_id_id) VALUES ('buskbryn', 3);

-- 4 Jord
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('blekeutfällning', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('brandfläck', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('jordhög', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('lerblotta', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('naken jord', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('sandbank', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('sandblotta', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('sanddyn', 4);
INSERT INTO public.survey_app_vm_jord (attributes, group_id_id) VALUES ('skredärr', 4);

-- 5 Kulturlandskap
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('brukningsväg', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('odlingsröse', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('skalgrustäkt', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('stenmur', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('stig', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('träbyggnad', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('trägärdesgård', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('vägren', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('åkerholme', 5);
INSERT INTO public.survey_app_vm_kulturlandskap (attributes, group_id_id) VALUES ('åkerren', 5);

-- 6 Myr
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('flark', 6);
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('hölja', 6);
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('kärr', 6);
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('lagg', 6);
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('pals', 6);
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('sträng', 6);
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('torvblotta', 6);
INSERT INTO public.survey_app_vm_myr (attributes, group_id_id) VALUES ('torvgrav', 6);

-- 7 Strand
INSERT INTO public.survey_app_vm_strand (attributes, group_id_id) VALUES ('driftvall', 7);
INSERT INTO public.survey_app_vm_strand (attributes, group_id_id) VALUES ('saltskona', 7);

-- 8 Träd
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('allé', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('boträd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('bryn', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('fruktbärande träd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('gammalt träd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('grovt hålträd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('grovt träd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('hamlat trad', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('hålträd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('högstubbe', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('jätteträd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('låga', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('mycket gammalt träd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('rotvälta', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('solitärträd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('stubbe', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('torrträd', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('trädrad', 8);
INSERT INTO public.survey_app_vm_trad (attributes, group_id_id) VALUES ('trädsockel', 8);

-- 9 Vatten
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('bäck', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('dike', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('djuphåla', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('dråg', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('fors', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('forsnacke', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('glup', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('göl', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('korvsjö', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('källa', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('lekgrus', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('rännil', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('småvatten', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('strandbrink', 9);
INSERT INTO public.survey_app_vm_vatten (attributes, group_id_id) VALUES ('svämplan', 9);

-- 10 Övrigt
INSERT INTO public.survey_app_vm_ovrigt (attributes, group_id_id) VALUES ('biodepå', 10);
INSERT INTO public.survey_app_vm_ovrigt (attributes, group_id_id) VALUES ('myrstack', 10);
INSERT INTO public.survey_app_vm_ovrigt (attributes, group_id_id) VALUES ('rishög', 10);
INSERT INTO public.survey_app_vm_ovrigt (attributes, group_id_id) VALUES ('snölega', 10);
INSERT INTO public.survey_app_vm_ovrigt (attributes, group_id_id) VALUES ('anges ej', 10);



-- GROUP CLASSIFICATION (NATURA2000)
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Kust och hav');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Dyner');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Sötvatten');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Gräsmarker');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Myrar');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Berg och substratmarker');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Skog');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Övrigt alternativ');
INSERT INTO public.survey_app_vm_group_natura2000 ("group") VALUES ('Övriga alternativ som endast är tillåtna vid förstudier');

-- GROUP ATTRIBUTES
-- 1 Kust och hav
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Sandbankar', 1110, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Estuarier', 1130, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Blottade ler- och sandbottnar', 1140, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Laguner', 1150, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Stora vikar och sund', 1160, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Rev', 1170, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Bubbelrev', 1180, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Driftvallar', 1210, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Sten- och grusvallar', 1220, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Vegetationsklädda havsklippor', 1230, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Glasörtstränder', 1310, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Salta strandängar', 1330, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Rullstensåsöar i Östersjön', 1610, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Skär och små öar i Östersjön', 1620, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Strandängar vid Östersjön', 1630, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Sandstränder vid Östersjön', 1640, 1);
INSERT INTO public.survey_app_vm_kust_hav (attributes, nature_type_code, group_id_id) VALUES ('Smala Östersjövikar', 1650, 1);

-- 2 Dyner
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Fördyner', 2110, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Vita dyner', 2120, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Grå dyner', 2130, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Risdyner', 2140, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Sandvidedyner', 2170, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Trädklädda dyner', 2180, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Dynvåtmarker', 2190, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Rissandhedar', 2320, 2);
INSERT INTO public.survey_app_vm_dyner (attributes, nature_type_code, group_id_id) VALUES ('Grässandhedar', 2330, 2);

-- 3 Sötvatten
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Näringsfattiga slättsjöar', 3110, 3);
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Ävjestrandsjöar', 3130, 3);
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Kransalgsjöar', 3140, 3);
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Naturligt näringsrika sjöar', 3150, 3);
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Myrsjöar', 3160, 3);
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Större vattendrag', 3210, 3);
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Alpina vattendrag', 3220, 3);
INSERT INTO public.survey_app_vm_sotvatten (attributes, nature_type_code, group_id_id) VALUES ('Mindre vattendrag', 3260, 3);

-- 4 Gräsmarker
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Fukthedar', 4010, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Torra hedar', 4030, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Alpina rishedar', 4060, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Alpina videbuskmarker', 4080, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Enbuskmarker', 5130, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Basiska berghällar', 6110, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Sandstäpp', 6120, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Alpina silikatgräsmarker', 6150, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Alpina kalkgräsmarker', 6170, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Kalkgräsmarker', 6210, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Stagg-gräsmarker', 6230, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Silikatgräsmarker', 6270, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Alvar', 6280, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Fuktängar', 6410, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Högörtängar', 6430, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Svämängar', 6450, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Slåtterängar i låglandet', 6510, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Höglänta slåtterängar', 6520, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Lövängar', 6530, 4);
INSERT INTO public.survey_app_vm_grasmark (attributes, nature_type_code, group_id_id) VALUES ('Karsthällmarker', 8240, 4);

-- 5 Myrar
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Högmossar', 7110, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Skadade hogmossar', 7120, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Terrängtäckande mossar', 7130, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Öppna mossar och kärr', 7140, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Källor och källkärr', 7160, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Agkärr', 7210, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Kalktuffkällor', 7220, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Rikkärr', 7230, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Alpina översilningskärr', 7240, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Aapamyrar', 7310, 5);
INSERT INTO public.survey_app_vm_myrer (attributes, nature_type_code, group_id_id) VALUES ('Palsmyrar', 7320, 5);

-- 6 Berg och substratmarker
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Silikatrasmarker', 8110, 6);
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Kalkrasmarker', 8120, 6);
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Kalkbranter', 8210, 6);
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Silikatbranter', 8220, 6);
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Hällmarkstorräng', 8230, 6);
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Grottor', 8310, 6);
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Havsgrottor', 8330, 6);
INSERT INTO public.survey_app_vm_berg_substratmark (attributes, nature_type_code, group_id_id) VALUES ('Glaciarer', 8340, 6);

-- 7 Skog
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Taiga', 9010, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Nordlig ädellövskog', 9020, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Landhöjningsskog', 9030, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Fjällbjörkskog', 9040, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsrik granskog', 9050, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Åsbarrskog', 9060, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Trädklädd betesmark', 9070, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Lövsumpskog', 9080, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsfattig bokskog', 9110, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsrik bokskog', 9130, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsrik ekskog', 9160, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Ädellövskog i branter', 9180, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsfattig ekskog', 9190, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsfattig ekskog - 91D0', 0, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsfattig ekskog - 91E0', 0, 7);
INSERT INTO public.survey_app_vm_skog (attributes, nature_type_code, group_id_id) VALUES ('Näringsfattig ekskog - 91F0', 0, 7);

-- 8 Övrigt alternativ
INSERT INTO public.survey_app_vm_ovrigt_2 (attributes, nature_type_code, group_id_id) VALUES ('Ingen del av biotopen bedöms uppfylla den svenska tolkningen av EU-definitionen för någon Natura 2000-naturtyp - NVI01', 0, 8);

-- 9 Övriga alternativ som endast är tillåtna vid förstudier
INSERT INTO public.survey_app_vm_ovrigt_forstudier (attributes, nature_type_code, group_id_id) VALUES ('Hela eller delar av biotopen bedoms uppfylla den svenska tolkningen av EU-definitionen för någon Natura 2000-naturtyp, men naturtyp kan inte fastställas - NVI02', 0, 9);
INSERT INTO public.survey_app_vm_ovrigt_forstudier (attributes, nature_type_code, group_id_id) VALUES ('Förstudie; och Natura 2000-naturtyp har inte kunnat bedomas. - NVI03', 0, 9);



-- GROUP CLASSIFICATION (HYDROMORFOLOGISK)
INSERT INTO public.survey_app_vm_group_hydromorfologisk ("group") VALUES ('Hydromorfologisk typ');

-- GROUP ATTRIBUTES
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Extremt påverkade vattendrag', 'Z', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Branta vattendrag i fast berg', 'A', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag i fast berg med lutning over 10 %', 'Aa', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag i fast berg med lutning under 10 %', 'AL', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Branta vattendrag med sten och turbulent flöde', 'B', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Kaskadvattendrag', 'Bk', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Trappstegsformat vattendrag', 'Bt', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag med plan botten', 'Bp', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag med block och sten med låg lutning', 'BI', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag med regelbundet växlande strömsträckor och höljor', 'C', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag med transversellt riffle-pool system', 'Ct', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag med växelvis hölja och strömsträcka', 'Cv', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag med flatflodsystem', 'D', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag i finkorniga sediment', 'E', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Överfördjupade vattendrag i finkorniga sediment', 'F', 1);
INSERT INTO public.survey_app_vm_values_hydro (attributes, type_code, group_id_id) VALUES ('Vattendrag i torv', 'T', 1);



-- GROUP CLASSIFICATION (LIVSMILJO GRAD)
INSERT INTO public.survey_app_vm_group_livsmiljo_grad ("group") VALUES ('Livsmiljögrad');

-- GROUP ATTRIBUTES
INSERT INTO public.survey_app_vm_values_livsmiljo (attributes, type_code, group_id_id) VALUES ('Området har mycket goda förutsättningar att upprätthålla eller bidra till långsiktigt livskraftiga populationer för arten eller organismgruppen.', 'Mycket lämplig livsmiljö', 1);
INSERT INTO public.survey_app_vm_values_livsmiljo (attributes, type_code, group_id_id) VALUES ('Området har goda förutsättningar att upprätthålla eller bidra till långsiktigt livskraftiga populationer för arten eller organismgruppen.', 'Lämplig livsmiljö', 1);
INSERT INTO public.survey_app_vm_values_livsmiljo (attributes, type_code, group_id_id) VALUES ('Området har vissa förutsättningar att upprätthålla eller bidra till långsiktigt livskraftiga populationer for arten eller organismgruppen.', 'Möjlig livsmiljö', 1);
INSERT INTO public.survey_app_vm_values_livsmiljo (attributes, type_code, group_id_id) VALUES ('Området saknar uppenbara förutsättningar att upprätthålla eller bidra till långsiktigt livskraftiga populationer för arten eller organismgruppen.', 'Olämplig livsmiljö', 1);



-- GROUP CLASSIFICATION (KVANTIFIERAD ARTFÖREKOMST)
INSERT INTO public.survey_app_vm_group_kvant_artforekomst ("group") VALUES ('Kvantifiering av artförekomster');

-- GROUP ATTRIBUTES
INSERT INTO public.survey_app_vm_values_kvant_artforekomst (attributes, type_code, group_id_id) VALUES ('Arten förekommer i riklig mängd, i täta förekomster, i en stark population eller har på annat sätt en betydelsefull förekomst.', 'Mycket god förekomst', 1);
INSERT INTO public.survey_app_vm_values_kvant_artforekomst (attributes, type_code, group_id_id) VALUES ('Arten förekommer i någorlunda riklig mängd, i någorlunda täta förekomster, i en någorlunda stark population eller har på annat sätt en någorlunda betydelsefull förekomst.', 'God förekomst', 1);
INSERT INTO public.survey_app_vm_values_kvant_artforekomst (attributes, type_code, group_id_id) VALUES ('Arten förekommer i liten mängd, i en gles förekomst, i en svag population eller har på annat sätt en mindre betydelsefull förekomst.', 'Sparsam förekomst', 1);
INSERT INTO public.survey_app_vm_values_kvant_artforekomst (attributes, type_code, group_id_id) VALUES ('Arten är ej funnen trots att den eftersökts så noga att det är mer sannolikt att den inte förekommer än motsatsen.', 'Förekommer sannolikt inte', 1);
INSERT INTO public.survey_app_vm_values_kvant_artforekomst (attributes, type_code, group_id_id) VALUES ('Arten har inte noterats, men har heller inte eftersökts tillräckligt noga for att kunna avgöra om den finns.', 'Okänd förekomst', 1);



-- GROUP CLASSIFICATION (KARTLÄGGNINGSTYP)
INSERT INTO public.survey_app_vm_group_kartlaggningstyp ("group") VALUES ('Kartläggningstyp');

-- GROUP ATTRIBUTES
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('NVI detalj', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('NVI medel - naturvärdesklass 1-3', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('NVI medel - naturvärdesklass 1-4', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('NVI översikt - naturvärdesklass 1-3', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('NVI översikt - naturvärdesklass 1-4', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Förenklad', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - NVI bas', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - NVI utokad med fjarranalys', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Vardelement', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Sarskilt skyddsvarda trad', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Naturvärdesträd', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Generellt skyddade biotopskyddsområden', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Natura 2000-naturtyp', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Övriga biotoper', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Vattendrag', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Småvatten', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Bottenmiljo', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Artforekomster', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('förstudie - Livsmiljoer', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Värdeelement', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Särskilt skyddsvärda träd', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Naturvärdesträd', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Generellt skyddade biotopskyddsområden', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Övriga biotoper', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Natura 2000-naturtyp', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Småvatten', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Vattendrag', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Bottenmiljö', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Artförekomster', 1);
INSERT INTO public.survey_app_vm_values_kartlaggningstyp (attributes, group_id_id) VALUES ('fördjupad inventering - Livsmiljöer', 1);



-- GROUP CLASSIFICATION (NATURVÄRDESKLASS)
INSERT INTO public.survey_app_vm_group_naturvardsklass ("group") VALUES ('Naturvärdesklass');

-- GROUP ATTRIBUTES
INSERT INTO public.survey_app_vm_values_naturvardesklass (attributes, color, nature_value_class, group_id_id) VALUES ('Högsta naturvärde, naturvärdesklass 1', 'R: 150 G:0 B:0', 'Högsta naturvärde', 1);
INSERT INTO public.survey_app_vm_values_naturvardesklass (attributes, color, nature_value_class, group_id_id) VALUES ('Högt naturvärde, naturvärdesklass 2', 'R:255 G:0 B:0', 'Högt naturvärde', 1);
INSERT INTO public.survey_app_vm_values_naturvardesklass (attributes, color, nature_value_class, group_id_id) VALUES ('Påtagligt naturvärde, naturvärdesklass 3', 'R:255 G:190 B:0', 'Påtagligt naturvärde', 1);
INSERT INTO public.survey_app_vm_values_naturvardesklass (attributes, color, nature_value_class, group_id_id) VALUES ('Visst naturvärde, naturvärdesklass 4', 'R:255 G:255 B:0', 'Visst naturvärde', 1);
INSERT INTO public.survey_app_vm_values_naturvardesklass (attributes, color, nature_value_class, group_id_id) VALUES ('Allmän betydelse för biologisk mångfald, övrig värdeklass 5', 'R:0 G:176 B:80', 'Allmän betydelse', 1);
INSERT INTO public.survey_app_vm_values_naturvardesklass (attributes, color, nature_value_class, group_id_id) VALUES ('Saknar uppenbar betydelse för biologisk mångfald, övrig värdeklass 6', 'R:197 G:224 B:179', 'Ingen uppenbar betydelse', 1);
INSERT INTO public.survey_app_vm_values_naturvardesklass (attributes, color, nature_value_class, group_id_id) VALUES ('Uppenbart negativ betydelse för biologisk mångfald, övrig värdeklass 7', 'R:191 G:191 B:191', 'Negativ betydelse', 1);
