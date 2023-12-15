-- GROUP
-- Kalfjäll
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('KF10', 'Fjällhed');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('KF20', 'Fjälläng');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('KF30', 'Myr');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('KF40', 'Buskmark');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('KF50', 'Berg');

-- Berg och sten
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('BE10', 'Terrängformer');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('BE20', 'Formationer av block och sten');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('BE30', 'Kalksten');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('BE40', 'Stränder');

-- Naturligt bar jord
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NB10', 'Dyner');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NB20', 'Andra formationer orsakade av erosion och sedimentation');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NB30', 'Stränder');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NB40', 'Naturligt bar jord - allmänt');

-- Naturlig gräsmark
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NG10', 'Betesmark - huvudtyper');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NG20', 'Hed, stäpp och alvar');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NG30', 'Strandängar');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NG40', 'Slåtterängar');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NG50', 'Naturlig gräsmark - allmänt');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NG60', 'Övriga träd och buskbärande naturliga gräsmarksbiotoper');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('NG70', 'Övrigt förtydligande');

-- Skog och buskmark
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('SK10', 'Lövskog');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('SK20', 'Barrskog');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('SK30', 'Blandskog');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('SK40', 'Kompletterande biotopbeteckning för skog');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('SK50', 'Buskmark');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('SK60', 'Restbiotoper - små bestånd');

-- Myr
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY10', 'Mosse allmänt och undertyper baserat på trädskikt');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY14', 'Mosse - undertyper baserat på geomorfologi');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY20', 'Okänt data');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY30', 'Kärr allmänt och undertyper baserat på trädskikt');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY40', 'Undertyper av kärr baserat på terräng och mark');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY50', 'Undertyper av kärr baserat på markens pH-värde');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY60', 'Strandvåtmarker, vassar (se även naturlig gräsmark sjöar och vattendrag)');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY70', 'Blandmyrar');
INSERT INTO public.survey_app_vm_ecosystem_category_mark_nat (section_code, category) VALUES ('MY80', 'Komplettering baserat på vegetation och vattentillgång');



-- ATTRIBUTE
-- KF10 - Fjällhed
INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF10'), 'KF1', 'fjällhed', 'Kalfjäll med vegetation som domineras av ris, gräs och halvgräs.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF10'), 'KF11', 'alpin gräshed', 'Kalfjäll med vegetation som domineras av gräs och halvgräs.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF10'), 'KF12', 'alpin busklavhed', 'Kalfjäll med vegetation som domineras av busklavar.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF10'), 'KF13', 'alpin rished', 'Kalfjäll med vegetation som domineras av ris.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF10'), 'KF131', 'dvärgbjörkshed', 'Kalfjäll med vegetation som domineras av dvärgbjörk.');

-- KF20 - Fjälläng
INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF20'), 'KF2', 'fjälläng', 'Kalfjäll med vegetation som domineras av örter.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF20'), 'KF21', 'alpin lågörtäng', 'Kalfjäll med vegetation som domineras av lågvuxna örter.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF20'), 'KF22', 'alpin högörtäng', 'Kalfjäll med vegetation som domineras av högvuxna örter.');

-- KF30 - Myr
INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF31', 'rismyr', 'Myr som domineras av ris, oftast på ett bottenskikt av vitmossa.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF32', 'palsmyr', 'Öppen blandmyr, med mycket kärrytor och vattenfyllda partier samt forekomst av palsar.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF33', 'soligent kärr', 'Sluttande kärr.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF331', 'backkärr', 'Sluttande kärr med en lutning över 8 grader.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF34', 'topogent karr', 'Plant kärr med en lutning under 3 grader.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF341', 'strandkarr', 'Sumpkärr eller annan typ av kärr i anslutning till sjö eller vattendrag och som påverkas av yt- och grundvatten från dessa.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF342', 'sumpkärr', 'Blött kärr med lösbottnar och tidvis vatten i ytan. Kan utgöras av limnogena strandkärr eller annan typ av blött kärr.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF343', 'gungfly', 'Matta av torv som flyter på vattnet.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF35', 'fattigkärr', 'Kärr med lagre pH-värde (4,5-6) med en artfattigare flora än rikkärren och utan indikatorarter för rikkärr.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF36', 'intermediart karr', 'Övergångsform eller blandning av fattigkärr och rikkärr.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF37', 'rikkärr', 'Kärr med högre pH-värde (6-8) ofta med en artrik flora med inslag av indikatorarter för rikkärr.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF30'), 'KF371', 'extremrikkärr', 'Kalkkärr med mycket högt pH-värde och artrik flora, ofta med inslag av orkidéer.');

-- KF40 - Buskmark
INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF40'), 'KF41', 'enbuskmark', 'Mark som domineras av enbuskar.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF40'), 'KF42', 'videsnår', 'Mark som domineras av viden (salix).');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF40'), 'KF43', 'strandvidesnår', 'Mark som domineras av viden (salix) på stränder vid sjöar och vattendrag.');

-- KF50 - Berg och sten
INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF51', 'berg', 'Mark som domineras av berg.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF52', 'sten', 'Mark som domineras av sten.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF53', 'fjällbrant', 'Kraftig lutande fjällterräng (>30 grader) som domineras av berg och sten.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF531', 'klippa', 'Klippa i fast berg.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF532', 'klippstup', 'Klippa med lodräta stup.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF54', 'rasmark', 'Brant eller sluttning nedanfor brant som domineras av stenar och block.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF541', 'talus', 'Anhopning av nedrasade stenar och block invid en bergvagg, med en rasvinkel på cirka 35 grader.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF55', 'klyfta', 'Brant, smal avgrund mellan två klippor.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF551', 'kanjon', 'Dalgång i fast berg med branta sidor och stort djup i förhållande till bredden.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF561', 'blockmark', 'Mark som domineras av block och sten, ofta på hög hojd men kan även förekomma på lägre nivå.');

INSERT INTO public.survey_app_vm_kalfjall (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'KF50'), 'KF562', 'blocksänkor', 'Område med depressioner i terrängen, vilka i ytan domineras av grova till medelgrova block.');


-- BE10 - Berg
INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE10'), 'BE1', 'bergbrant', 'Kraftig lutande terrang (>30 grader) i fast berg.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE10'), 'BE11', 'klippa', 'Klippa i fast berg.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE10'), 'BE111', 'klippstup', 'Klippa med lodrätt stup.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE10'), 'BE112', 'kustklippa', 'Kalt berg med mycket lite jordtäcke i kusttrakter.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE10'), 'BE1121', 'klint', 'Erosionsbrant vid havet eller större insjö.');

-- BE20 - Blockmark
INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE20'), 'BE2', 'blockmark', 'Mark som domineras av block och sten.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE20'), 'BE21', 'klapperstensfält', 'Mark med rundnötta stenar som slipats av vågor eller rinnande vatten.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE20'), 'BE22', 'blocksänkor', 'Område med depressioner i terrängen, vilka i ytan domineras av grova till medelgrova block.');

-- BE30 - Kalkberg
INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE30'), 'BE3', 'kalkberg', 'Berggrund av kalk eller andra basiska mineral som ger upphov till en kalkgynnad flora.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE30'), 'BE31', 'karst', 'Landform som bildats i kalkstensområden delvis genom underjordisk erosion orsakad av kemisk vittring genom kolsyra och andra syror i vattnet och underjordisk vattenavrinning.');

-- BE40 - Strand
INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE40'), 'BE4', 'strand', 'Strand som domineras av berg och sten.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE40'), 'BE41', 'klippstrand', 'Strand som domineras av block, klippor och fast berg.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE40'), 'BE42', 'blockstrand', 'Strand som domineras av block.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE40'), 'BE43', 'stenstrand', 'Strand som domineras av sten.');

INSERT INTO public.survey_app_vm_berg_och_sten (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'BE40'), 'BE431', 'klapperstensstrand', 'Strand som domineras av klappersten.');


-- NB10 - Dyn
INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB10'), 'NB1', 'dyn', 'Kulle eller långsträckt rygg som bildats genom avlagring av vindtransporterad sand. Typen av dyn förtydligas genom att man anger Natura 2000-naturtyp.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB10'), 'NB11', 'dyner', 'Område med dyner. Typen av dyner förtydligas genom att man anger en eller flera Natura 2000-naturtyper.');

-- NB20 - Strandbrink
INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB20'), 'NB21', 'strandbrink', 'Strandkanter med blottad jord som bildas genom vattenerosion och små skred.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB20'), 'NB22', 'nipor', 'Branta stora strandbrinkar av sand eller silt vid större vattendrag.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB20'), 'NB23', 'öppet skredärr', 'Blottad jord i sand eller finsediment som skapats av jordskred.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB20'), 'NB24', 'kalkblekefält', 'Fält av kalk som bildas där kalkrikt vatten kommer ur källor och fälls ut när vattnet får kontakt med luft. Det är en sällsynt, starkt basisk miljo med mycket gles och spridd vegetation.');

-- NB30 - Strand
INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB30'), 'NB3', 'strand', 'Strand som domineras av bar jord.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB30'), 'NB31', 'grusstrand', 'Strand som domineras av grus.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB30'), 'NB32', 'sandstrand', 'Strand som domineras av sand.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB30'), 'NB33', 'finsedimentstrand', 'Strand som domineras av silt och lera.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB30'), 'NB34', 'lerstrand', 'Strand som domineras av lera.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB30'), 'NB35', 'dy- och gyttjestrand', 'Strand som domineras av dy och gyttja.');

-- NB40 - Jordblotta
INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB40'), 'NB4', 'jordblotta', 'Naturligt blottad jord i allmanhet utan kant ursprung. Kan aven omfatta jordblottor som skapats av människan i syfte att återställa en naturlig biotop.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB40'), 'NB41', 'sandblotta', 'Naturligt blottad sand i allmanhet utan kant ursprung. Kan aven omfatta sandblottor som skapats av människan i syfte att återställa en naturlig biotop.');

INSERT INTO public.survey_app_vm_naturligt_bar_jord (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NB40'), 'NB412', 'sandmark', 'Mark som domineras av sand, med inslag av öppen sand. Se även naturlig gräsmark samt skog och gräsmark.');



-- NG10 - Betesmark
INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG1', 'betesmark', 'Betad mark som inte är åkermark, men som kan ha inslag av fossil åker. Vegetationen har präglats av betet, men hävden kan ha upphört och igenväxning påbörjats.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG11', 'naturbetesmark', 'Betesmark som betats under lång tid och varken plöjts i närtid, insåtts med vallväxter eller är tydligt påverkad av tillförd gödsel eller annan kultivering.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG12', 'öppen betesmark', 'Betesmark utan eller med enstaka träd och buskar.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG121', 'öppen naturbetesmark', 'Naturbetesmark utan eller med enstaka träd och buskar.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG13', 'buskrik betesmark', 'Betesmark med stort inslag av buskar.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG131', 'buskrik naturbetesmark', 'Naturbetesmark med stort inslag av buskar.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG14', 'trädbärande betesmark', 'Betesmark med påtagligt inslag av träd. Hagmark, se även olika typer.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG1310', 'trädbärande naturbetesmark', 'Naturbetesmark med påtagligt inslag av träd.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG1301', 'blandlövhage', 'Betesmark med ett trädskikt bestående av lövträd.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG1302', 'ädellövhage', 'Betesmark med ett trädskikt bestående av ädellövträd.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG1303', 'ekhage', 'Betesmark med ett trädskikt som domineras av ek.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG10'), 'NG1304', 'björkhage', 'Betesmark med ett trädskikt som domineras av björk.');

-- NG20 - Hed
INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG2', 'hed', 'Öppen vidsträckt gräsmark som hävdas genom bete, bränning eller markstörning, och som inte varit åker under senare tid.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG21', 'ljunghed', 'Ljungbevuxen hed som hävdas eller har hävdats genom bete och/eller bränning.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG211', 'hallmarkshed', 'Hed på hällmarker som hävdas eller har hävdats genom bete och/eller bränning. Hällmarker omväxlar med ris, kärr och annan vegetation i svackor med djupare jordtäcke. Små vattensamlingar kan förekomma som element.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG22', 'sandhed', 'Sandhed i inlandet som hålls öppen, till exempel genom bete, militär övningsverksamhet eller annan störning.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG2210', 'rissandhed', 'Sandhed i inlandet som domineras av ris och som halls oppen genom bete, militär övningsverksamhet eller annan störning.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG22100', 'grässandhed', 'Sandhed i inlandet som domineras av gräs och som hålls öppen genom bete, militär övningsverksamhet eller annan storning.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG23', 'sandstäpp', 'Biotop som utvecklas genom långvarig beteshävd på torra, kalkrika, humusfria och väldränerade sandjordar med hög solinstrålning och för Sverige låg nederbördsmängd.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG20'), 'NG24', 'alvar', 'Öppen mark som präglas av ett tunt vegetationstäcke på kalkstensbergrund.');

-- NG30 - Strandäng
INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG30'), 'NG31', 'sötvattensstrandäng', 'Betad mad. Hålls normalt öppen genom bete av kreatur och vilda djur. Kan även hållas öppen genom naturliga processer. Se även andra biotopbeteckningar under myr och sjö.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG30'), 'NG32', 'havsstrandäng', 'Långgrund öppen strand vid havet som påverkas av tidvatten. Betas av kreatur och vilda djur eller hålls öppen genom naturliga processer. Motsvarar landstrandsvegetation enligt Vegetationstyper i Norden. Se även naturligt bar jord.');

-- NG40 - Slåtteräng
INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG4', 'slåtteräng', 'Mark som inte är åkermark, som sköts genom slåtter eller slåtter kompletterat med efterbete. Förr gjordes detta för att få vinterfoder, men numera är syftet oftast att upprätthålla en historisk tradition och/eller gynna en örtrik flora.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG41', 'öppen slåtteräng', 'Slåtteräng utan eller med enstaka träd.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG42', 'träd- och buskbärande äng', 'Slåtteräng med tydligt inslag av träd.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG431', 'hackslått', 'Slåtteräng på moränmark med inslag av sten i ytan.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG432', 'sidvallsäng', 'Slåtterhävdade fuktiga till blöta marker, som inte tillhör den egentliga strandzonen, men som genom sitt lage i terrangen har en vegetation av fuktängstyp.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG433', 'slåtterkärr', 'Slåtterhavdat kärr.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG434', 'slåttermad', 'Slåtterhävdad mad.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG40'), 'NG435', 'löväng', 'Slåtteräng med inslag av träd som hamlas.');

-- NG50 - Gräsmark
INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG50'), 'NG51', 'torr gräsmark', 'Öppen torr naturlig gräsmark.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG50'), 'NG52', 'frisk gräsmark', 'Öppen frisk naturlig gräsmark.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG50'), 'NG53', 'fuktig gräsmark', 'Öppen fuktig naturlig gräsmark.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG50'), 'NG54', 'ljungmark', 'Öppen mark som domineras av ljung.');

-- NG60 - Gles träd- och buskmark
INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG61', 'gles traddunge', 'Litet område med naturlig gräsmark som är glest bevuxet med träd som genom begränsad storlek eller av andra anledningar inte ar eller har tydliga kännetecken för betesmark eller slåtteräng.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG611', 'gles lövdunge', 'Gles traddunge som domineras av lovtrad och naturlig grasmark som genom begränsad storlek eller av andra anledningar inte är eller har tydliga kännetecken för betesmark eller slåtteräng.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG62', 'gles buskmark', 'Naturlig gräsmark, glest bevuxen med buskar som inte är eller har tydliga kännetecken för betesmark eller slåtteräng.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG63', 'glest bryn', 'Naturlig grasmark, glest bevuxen med trad och buskar i gränsen mellan öppen mark och skog.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG631', 'glest lovbryn', 'Naturlig gräsmark, glest bevuxen med lövträd och buskar i gränsen mellan öppen mark och skog.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG632', 'glest buskbryn', 'Naturlig gräsmark med buskar i gränsen mellan skog och öppnare mark.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG64', 'gles träd- och buskridå', 'Naturlig gräsmark med gles ridå av träd och buskar.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG641', 'gles trädridå', 'Naturlig gräsmark med gles ridå av träd.');

INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG60'), 'NG642', 'gles buskridå', 'Naturlig gräsmark med gles ridå av buskar.');

-- NG70 - Igenväxningsmark
INSERT INTO public.survey_app_vm_naturlig_grasmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'NG70'), 'NG71', 'igenväxningsmark', 'Naturlig gräsmark med svag eller upphord havd som innebär att tydlig igenväxning med träd och buskar pågår.');



-- SK10 - Lövskog
INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK1', 'lövskog', 'Skog som domineras av lövträd.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK11', 'lövsumpskog', 'Lövskog på fuktig mark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK12', 'ädellövskog', 'Skog som domineras av adellövträd.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK121', 'örtrik ädellövskog - lund', 'Ädellövskog på näringsrik mark med rik flora.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK122', 'ekskog', 'Skog som domineras av ek.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK123', 'bokskog', 'Skog som domineras av bok.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK124', 'avenbokskog', 'Skog som domineras av avenbok.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK13', 'triviallövskog', 'Skog som domineras av triviala lovträd.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK131', 'aspskog', 'Skog som domineras av asp.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK132', 'björkskog', 'Skog som domineras av björk.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK1321', 'fjällbjörkskog', 'Björkskog inom den subalpina regionen, vilket omfattar zonen strax nedanför skogsgränsen.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK133', 'klibbalskog', 'Skog som domineras av klibbal.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK134', 'gråalskog', 'Skog som domineras av gråal.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK135', 'alkärr', 'Skog som domineras av al på mycket blöt mark som tidvis eller i vissa delar står under vatten.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK10'), 'SK136', 'sälgskog', 'Skog som domineras av sälg.');

-- SK20 - Barrskog
INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK21', 'barrblandskog', 'Skog som domineras av barrträd med både gran och tall, men inget av dessa dominerar.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK22', 'lövblandad barrskog', 'Skog som domineras av barrträd, med påtagligt inslag av lövträd.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK23', 'kalkbarrskog', 'Barrskog på kalkrik mark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK24', 'granskog', 'Skog som domineras av gran.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK241', 'gransumpskog', 'Skog som domineras av gran på fuktig mark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK25', 'tallskog', 'Skog som domineras av tall.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK251', 'hällmarkstallskog', 'Tallskog på hällmarker.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK252', 'sandtallskog', 'Tallskog på sandmark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK20'), 'SK253', 'tallmosse', 'Tallskog på myrmark.');

-- SK30 - Blandskog
INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK30'), 'SK3', 'blandskog', 'Skog med blandade trädslag, utan dominans av varken lövträd eller barrträd.');

-- SK40 - Särskilda skogstyper
INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK41', 'sumpskog', 'Skog på fuktig mark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK411', 'strandskog', 'Skog på stränder som påverkas av vatten från sjö, hav eller vattendrag.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK412', 'svämskog', 'Strandskog på svämplan.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK421', 'brantskog', 'Skog i bergbranter.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK422', 'ravinskog', 'Skog som växer i raviner som uppstått av att ett vattendrag rinner genom lösa jordarter.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK423', 'hällmarksskog', 'Skog på hällmark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK43', 'betad skog', 'Skog som är betad.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK431', 'äldre betespräglad skog', 'Betespräglad äldre skog som uppkommit genom naturlig föryngring.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK432', 'igenvuxen hagmark', 'Tidigare hagmark som nu vuxit igen till skog, men som ännu har kvar tydliga karaktärer som skapats genom bete.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK441', 'landhöjningsskog', 'Skog på landhöjningskust som uppkommit genom naturlig föryngring.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK442', 'fjällnära skog', 'Skog som ligger öster om gränsen för fjällnära skog - en gräns som är definierad av Skogsstyrelsen.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK45', 'stormfälld skog', 'Område som domineras av träd som fallit av vinden.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK46', 'brandfält', 'Barrskog som nyligen brunnit.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK40'), 'SK461', 'lövbränna', 'Lövskog som uppkommit efter brand.');

-- SK50 - Buskmark
INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK50'), 'SK51', 'enbuskmark', 'Mark som domineras av enbuskar.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK50'), 'SK52', 'hässle', 'Mark som domineras av hassel.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK50'), 'SK53', 'videbuskmark', 'Buskmark som domineras av viden (salix).');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK50'), 'SK54', 'strandbuskmark', 'Buskmark på svämplan och i andra typer av stränder som påverkas av vatten från sjö, hav eller vattendrag.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK50'), 'SK55', 'buskkärr', 'Blött område som domineras av buskar.');

-- SK60 - Träddunge
INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK6', 'träddunge', 'Mindre trädbestånd.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK61', 'lövdunge', 'Mindre bestånd som domineras av lövbärande träd och buskar.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK62', 'bryn', 'Område som domineras av träd och buskar i gränsen mellan skog och öppnare mark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK621', 'lövbryn', 'Område som domineras av lövbärande träd och buskar i gränsen mellan skog och öppnare mark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK622', 'buskbryn', 'Område som domineras av buskar i gränsen mellan skog och öppnare mark.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK631', 'trädridå', 'Ridå med träd.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK632', 'lövridå', 'Ridå som domineras av lövbärande träd och buskar.');

INSERT INTO public.survey_app_vm_skog_buskmark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'SK60'), 'SK633', 'buskridå', 'Ridå som domineras av buskar.');



-- MY10 - Mosse
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY10'), 'MY1', 'mosse', 'Myr vars vatten nästan enbart kommer från direkt nederbörd. Innehåller ofta mindre kärrpartier, till exempel laggen.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY10'), 'MY11', 'öppen mosse', 'Mosse eller del av mosse som domineras av öppna ytor.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY10'), 'MY12', 'glest trädbevuxen mosse', 'Mosse eller del av mosse som är glest trädbevuxen.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY10'), 'MY13', 'skogsmosse', 'Mosse eller del av mosse som domineras av trädvegetation. (Se även Skog och buskmark för ytterligare biotopbeteckningar.)');

-- MY20 - Plan till svagt välvd mosse
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY20'), 'MY21', 'svagt välvd mosse', 'Plan till svagt välvd mosse utan tydliga formelement, oftast mer eller mindre trädtäckt, med undantag för de största mossarna. Oftast dåligt utvecklad lagg.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY20'), 'MY22', 'platåmosse', 'Allsidigt välvd mosse vars centrala del utgörs av ett flackt öppet mosseplan. Perifera delar har oftast randskog och laggkärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY20'), 'MY23', 'koncentrisk mosse', 'Mosse med konvex form som bildar tydliga bågformiga mönster av tuvsträngar och höljor kring myrens högsta punkt som ligger centralt på mosseplanet. Perifera delar har oftast randskog och laggkärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY20'), 'MY24', 'excentrisk mosse', 'Mosse med konvex form som bildar tydliga bågformiga mönster av tuvsträngar och höljor kring myrens högsta punkt som ligger perifert på mosseplanet. Perifera delar har oftast randskog och laggkärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY20'), 'MY25', 'sluttande mosse', 'Ensidigt sluttande mosse som saknar markerad höjdpunkt. Har oftast laggkärr längs sidorna.');

-- MY30 - Kärr
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY30'), 'MY3', 'kärr', 'Våtmark vars vatten huvudsakligen kommer från anslutande fastmark, sjö, vattendrag eller havet.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY30'), 'MY31', 'öppet kärr', 'Kärr som domineras av öppna ytor.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY30'), 'MY32', 'glest trädbevuxet kärr', 'Kärr som är glest trädbevuxet.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY30'), 'MY33', 'skogskärr', 'Kärr som domineras av trädvegetation. (Se även Skog och buskmark för ytterligare biotopbeteckningar.)');

-- MY40 - Soligent till topogent kärr
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY41', 'soligent kärr', 'Sluttande kärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY411', 'backkärr', 'Sluttande kärr med en lutning över 8 grader.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY42', 'topogent kärr', 'Plant kärr med en lutning under 3 grader.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY421', 'laggkärr', 'Den närmast fastmarken belägna delen av en högmosse med näringsrikare vatten än högmossen i övrigt.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY422', 'sumpkärr', 'Blött kärr med lösbottnar och tidvis vatten i ytan. Kan utgöras av strandkärr eller annan typ av blött kärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY43', 'källkärr', 'Ett källpåverkat kärr (oftast dominerat av rikkärrsvegetation) nedströms källor.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY44', 'glokärr', 'Kärren som bildas vid landhöjningskust och utgörs av större, mer eller mindre avsnörda sänkor som under lång tid bibehåller en vattenspegel, även efter att kontakten med havet brutits.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY40'), 'MY45', 'strängflarkkärr', 'Kärr med tydliga parallella strukturmönster av upphöjda strängar som dämmer upp mellanliggande blötare flarkar.');

-- MY50 - Fattigkärr till extremrikkärr
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY50'), 'MY51', 'fattigkärr', 'Kärr med lägre pH-värde (4,5-6) med en artfattigare flora än rikkärren och utan indikatorarter för rikkärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY50'), 'MY52', 'intermediärt karr', 'Övergångsform eller blandning av fattigkärr och rikkärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY50'), 'MY53', 'rikkärr', 'Kärr med högre pH-värde (6-8), ofta med en artrikare flora än fattigkärren och med inslag av indikatorarter för rikkärr.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY50'), 'M54', 'extremrikkärr', 'Kalkkärr med mycket högt pH-värde och artrik flora, ofta med inslag av orkidéer.');

-- MY60 - Strandvåtmark till gungfly
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY60'), 'MY61', 'strandvåtmark', 'Våtmark utmed stranden längs vattendrag, sjöar eller havet.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY60'), 'MY611', 'mad', 'Sumpkärr utmed stranden vid sjö eller vattendrag. Svämplan som kan översvämmas vid högvatten, ofta bevuxet med starr, höggräs och högörter.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY60'), 'MY612', 'högvassar', 'Kärr och andra våtmarker bevuxna med högvassar - bladvass, säv och kaveldun.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY60'), 'MY613', 'dvärgvassar', 'Kärr och andra våtmarker som domineras av dvärgvassar - starr och sjöfräken.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY60'), 'MY614', 'gungfly', 'Matta av torv som flyter på vattnet.');

-- MY70 - Blandmyr
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY70'), 'MY7', 'blandmyr', 'Myr som karaktäriseras av en mosaikartad blandning av kärr- och mosseelement och där kärren oftast dominerar. Förekommer i norra och mellersta Sverige.');

-- MY80 - Ristuvmosse till lösbotten
INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY80'), 'MY81', 'ristuvmosse', 'Torr till frisk myr som domineras av ris. Fuktigare partier kan förekomma. Är normalt en mosse.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY80'), 'MY82', 'fastmatta', 'Frisk till fuktig myr dominerad av fastmattor med vitmossor, skogsmossor, tuvull eller andra kärlväxter med utvecklat rotsystem som håller ihop torven. Fuktigare än ristuvmosse.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY80'), 'MY83', 'mjukmatta', 'Fuktig till mycket fuktig myr eller del av myr bestående av mjukmattor med vitmossor och kärlväxter med mindre utvecklat rotsystem än på fastmattorna, till exempel vitag och kallgräs.');

INSERT INTO public.survey_app_vm_myr_mark (category_id, specific_code, biotopemark, description) 
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_mark_nat WHERE section_code = 'MY80'), 'MY84', 'lösbotten', 'Blöt myr eller del av myr med ofta vattentäckt bottenmaterial bestående av dy, gyttja och torvslam. Sparsamt med vegetation.');
