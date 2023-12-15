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
