-- GROUP CLASSIFICATION NATURLIGA LIMMISKA SYSTEM
INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('SJ10', 'Biotopbeteckning - sjötyp');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('SJ20', 'Kompletterande biotopbeteckning - bottentyp');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('SJ30', 'Biotopbeteckning - strandtyp');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('SJ40', 'Kompletterande biotopbeteckning - vegetation');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('SV10', 'Naturligt småvatten');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('VA10', 'public.survey_app_vm_vattendragstyp - allmänt');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('VA20', 'Undertyper baserat på flöde');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('VA30', 'Kompletterande biotopbeteckning - morfologi');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('VA40', 'Kompletterande biotopbeteckning - bottentyp');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('VA50', 'Kompletterande biotopbeteckning - vegetation');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_nat (section_code, category)
VALUES ('VA60', 'Svämplan');

-- ATTRIBUTES SJÖ
-- SJ10 Categories
INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ11', 'näringsrik (eutrof) sjö', 'Sjö vars tillrinningsområde gör vattnet rikt på närsalter.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ12', 'måttligt näringsrik (mesotrof) sjö', 'Sjö med en näringstillgång mellan eutrof och oligotrof.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ13', 'näringsfattig (oligotrof) sjö', 'Sjö vars tillrinningsområde gör vattnet fattigt på närsalter.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ131', 'klarvattensjö', 'Näringsfattig sjö med klart vatten.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ132', 'brunvattensjö (dystrof)', 'Näringsfattig sjö med mycket humusämnen som gör vattnet brunfärgat.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ14', 'kransalgssjö', 'Kalkrik sjö med relativt näringsfattigt, klart eller humöst vatten och en vegetation som domineras av kransalger (Chara, Nitella).');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ15', 'kalkblekesjö', 'Sjö med botten av kalkbleke.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ10'), 'SJ16', 'fjällsjö', 'Sjö i fjällen med mycket klart, kallt och näringsfattigt vatten.');

-- SJ20 Categories
INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ20'), 'SJ21', 'klippbotten', 'Botten som domineras av fast berg.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ20'), 'SJ22', 'sten-blockbotten', 'Botten som domineras av block och/eller sten.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ20'), 'SJ23', 'sand-grusbotten', 'Botten som domineras av sand och/eller grus.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ20'), 'SJ24', 'mjukbotten', 'Botten som domineras av leriga och siltiga sediment.');

-- SJ30 Categories
INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ3', 'sjöstrand', 'Sjöstrand i allmänhet.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ31', 'klippstrand', 'Strand som domineras av block, klippor och fast berg.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ32', 'block-stenstrand', 'Strand som domineras av block och/eller sten.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ321', 'klapperstensstrand', 'Strand som domineras av klappersten.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ33', 'sandstrand', 'Strand som domineras av sand. Avser främst vattenstranden men får även omfatta landstrand.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ331', 'grusstrand', 'Strand som domineras av grus. Avser främst vattenstranden men får även omfatta landstrand.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ34', 'finsedimentstrand', 'Strand som domineras av silt och/eller lera. Avser främst vattenstranden men får även omfatta landstrand där det är motiverat.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ341', 'lerstrand', 'Strand som domineras av lera. Avser främst vattenstranden men får även omfatta landstrand där det är motiverat.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ342', 'dy och gyttjestrand', 'Strand som domineras av dy och gyttja. Avser främst vattenstranden men får även omfatta landstrand där det är motiverat.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ30'), 'SJ349', 'vasstrand', 'Strand som domineras av högvassar. Avser främst vattenstranden men får även omfatta landstrand där det är motiverat.');

-- SJ40 Categories
INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ40'), 'SJ41', 'övervattensvegetation', 'Vatten eller strand med övervattensvegetation med vass och örtvegetation. Helofytvegetation.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ40'), 'SJ411', 'dvärgvassar', 'Vatten eller strand som domineras av dvärgvassar - starr och sjöfräken.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ40'), 'SJ412', 'högvassar', 'Vatten eller strand som domineras av högvassar - bladvass, säv och kaveldun.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ40'), 'SJ42', 'flytbladsvegetation', 'Vatten med flytbladsvegetation, till exempel näckrosor, nate, andmat och igelknopp. Hydrofytvegetation.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ40'), 'SJ43', 'långskottsvegetation', 'Vatten eller strand med långskottsvegetation.');

INSERT INTO public.survey_app_vm_sjo (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SJ40'), 'SJ44', 'kortskottsvegetation', 'Vatten eller strand med kortskottsvegetation.');


--NATURLIGA SMÅVATTEN
-- SV10 Categories
INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV11', 'tjärn', 'Beskrivning för tjärn');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV12', 'litet fjällvatten', 'Beskrivning för litet fjällvatten');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV13', 'litet vatten i jordbrukslandskap', 'Beskrivning för litet vatten i jordbrukslandskap');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV14', 'göl', 'Beskrivning för göl');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV141', 'myrgöl', 'Beskrivning för myrgöl');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV151', 'korvsjö', 'Beskrivning för korvsjö');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV152', 'hällkar', 'Beskrivning för hällkar');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV16', 'temporärt naturligt småvatten', 'Beskrivning för temporärt naturligt småvatten');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV161', 'vätar', 'Beskrivning för vätar');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV1611', 'kalkvätar', 'Beskrivning för kalkvätar');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV162', 'glup/loke', 'Beskrivning för glup/loke');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV17', 'källa', 'Beskrivning för källa');

INSERT INTO public.survey_app_vm_naturliga_smavatten (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'SV10'), 'SV8', 'övrigt naturligt småvatten', 'Beskrivning för övrigt naturligt småvatten');


-- VATTENDRAG
-- VA10 Categories
INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA10'), 'VA11', 'älv', 'Större public.survey_app_vm_vattendrag.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA10'), 'VA12', 'å', 'Medelstort public.survey_app_vm_vattendrag, större än en bäck men mindre än en älv.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA10'), 'VA13', 'bäck', 'Litet public.survey_app_vm_vattendrag där det till skillnad från i rännilar och vissa diken rinner vatten under stora delar av året - inte bara vid regn eller snösmältning.');

-- VA20 Categories
INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA20'), 'VA21', 'lugnflytande vatten', 'public.survey_app_vm_vattendragssträcka med lugnflytande vatten.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA20'), 'VA22', 'strömmande vatten', 'public.survey_app_vm_vattendragssträcka där vattnet strömmar med högre hastighet.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA20'), 'VA23', 'forsande vatten', 'public.survey_app_vm_vattendragssträcka där vattnet har hög hastighet och forsar.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA20'), 'VA24', 'vattenfall', 'Plats där ett public.survey_app_vm_vattendrag faller rakt ned.');

-- VA30 Categories
INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA30'), 'VA31', 'meandrande public.survey_app_vm_vattendrag', 'public.survey_app_vm_vattendragsträcka med lugnflytande vatten där public.survey_app_vm_vattendraget skapar regelbundna bågar (meandrar) i områden med lätteroderade sediment.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA30'), 'VA32', 'förgrenat public.survey_app_vm_vattendrag', 'public.survey_app_vm_vattendragsträcka där public.survey_app_vm_vattendraget delar upp sig på flera grenar.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA30'), 'VA33', 'uträtat/överfördjupat public.survey_app_vm_vattendrag', 'public.survey_app_vm_vattendrag som rinner längs naturlig sträcka, men där fåran rätats ut eller fördjupats. Även där public.survey_app_vm_vattendrag har grävts på tidigare sjöbotten vid sjösänkningsåtgärd eller genom våtmark vid markavvattning.');

-- VA40 Categories
INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA40'), 'VA41', 'klippbotten', 'Botten som domineras av fast berg.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA40'), 'VA42', 'sten-blockbotten', 'Botten som domineras av block och/eller sten.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA40'), 'VA43', 'sand-grusbotten', 'Botten som domineras av sand och/eller grus.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA40'), 'VA44', 'mjukbotten', 'Botten som domineras av leriga och siltiga sediment.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA40'), 'VA45', 'organisk botten', 'Botten som domineras av torv eller andra organiska material.');

-- VA50 Categories
INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA50'), 'VA51', 'övervattensvegetation', 'public.survey_app_vm_vattendrag eller strand med övervattensvegetation med vass och örtvegetation. Helofytvegetation.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA50'), 'VA52', 'dvärgvassar', 'public.survey_app_vm_vattendrag eller strand som domineras av dvärgvassar - starr och sjöfräken.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA50'), 'VA53', 'högvassar', 'public.survey_app_vm_vattendrag eller strand som domineras av högvassar - vass, säv och kaveldun.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA50'), 'VA54', 'flytbladsvegetation', 'Vatten med flytbladsvegetation, till exempel näckrosor, natar, andmat och igelknoppar. Hydrofytvegetation.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA50'), 'VA55', 'långskottsvegetation', 'public.survey_app_vm_vattendrag med långskottsvegetation.');

INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA50'), 'VA56', 'kortskottsvegetation', 'public.survey_app_vm_vattendrag med kortskottsvegetation.');

-- VA60 Categories
INSERT INTO public.survey_app_vm_vattendrag (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_nat WHERE section_code = 'VA60'), 'VA6', 'svämplan', 'Den yta som byggts upp av sediment kring ett public.survey_app_vm_vattendrag och som översvämmas då och då. Se även exempelvis svämskog och strandbuskmark under Skog och buskmark, sötvattensstrandäng under Naturlig gräsmark och Strandvåtmarker under myr. Större svämplan ska föras till terrestra miljöer, men mindre områden kan ingå i public.survey_app_vm_vattendraget.');



-- GROUP SÖTVATTEN ANTROPOGEN
INSERT INTO public.survey_app_vm_ecosystem_category_sotv_ant (section_code, category)
VALUES ('AL10', 'Anlagda dammar och magasin');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_ant (section_code, category)
VALUES ('AL20', 'Anlagda vattendrag');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_ant (section_code, category)
VALUES ('AL30', 'Anlagd strand');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_ant (section_code, category)
VALUES ('AL40', 'Anläggningar i vatten');

INSERT INTO public.survey_app_vm_ecosystem_category_sotv_ant (section_code, category)
VALUES ('AL50', 'Frammande bottenmaterial');


-- AL10 Categories
INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1', 'anlagt vatten', 'Anlagt vatten i allmänhet.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL11', 'anlagt småvatten', 'Anlagt småvatten i allmänhet.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL111', 'märgelgrav', 'Av människan grävd håla där man brutit märgel för markförbättring.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL112', 'groddjursdamm', 'Småvatten som anlagts för att gynna groddjur och andra arter i och vid naturliga småvatten.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL113', 'trädgårdsdamm', 'Damm i trädgård.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1114', 'viltvatten', 'Småvatten som anlagts i syfte att gynna vilt, främst för jakt eller nöje.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1115', 'bevattningsdamm', 'Småvatten som anlagts i syfte att vattna odlingar.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1116', 'branddamm', 'Småvatten som anlagts i syfte att magasinera vatten som ska användas som släckvatten.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1117', 'dagvattendamm', 'Småvatten som anlagts i syfte att fördröja och rena dagvatten.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1118', 'kreatursdamm', 'Anlagt vatten som används av kreatur för att dricka.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL121', 'täktsjö', 'Vatten i botten på en grustäkt eller bergtäkt.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL122', 'torvgrav', 'Vatten som bildats som ett resultat av torvtäkt.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL123', 'vattenfyllt gruvhål', 'Gruvhål som är fyllt med vatten.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL124', 'anlagd våtmark', 'Våtmark som skapats av människor, med eller utan inslag av öppna vattenytor.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1241', 'anlagd naturvårdsvåtmark', 'Våtmark som anlagts för att gynna arter knutna till grunda våtmarker och för landskapsrestaurering.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL125', 'vattenmagasin', 'Vattendrag som dämts upp till en damm eller sjö i syfte att magasinera vatten.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL10'), 'AL1251', 'reglermagasin', 'Vattendrag som dämts upp till en damm eller sjö i syfte att magasinera och reglera vattenflödet för kraftproduktion.');


-- AL20 Categories
INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL20'), 'AL2', 'anlagt vattendrag', 'Anlagt vattendrag i allmänhet.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL20'), 'AL21', 'sluss', 'Anordning i flod, kanal eller tidvattenpåverkad hamn för lyftning eller sänkning av fartyg från en vattennivå till en annan.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL20'), 'AL22', 'kanal', 'Anlagd vattenväg med tillförda material eller utgrävd på en plats där det naturligt inte skulle ha runnit vatten.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL20'), 'AL23', 'dike', 'Diken som grävts med syftet att dränera marken och som konstant eller tidvis har ett vattenförande med ett vattenflöde som naturligt inte skulle funnits på platsen.');


-- AL30 Categories
INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL30'), 'AL3', 'anlagd strand', 'Anlagd strand i allmänhet.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL30'), 'AL31', 'strandskoning', 'Erosionsskydd med främmande material som lagts i strandkant i syfte att motverka erosion.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL30'), 'AL32', 'bank', 'Anlagd vall av jord, grus eller sten som bär en väg eller en järnväg, eller som anlagts i annat syfte.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL30'), 'AL33', 'kaj', 'Uppbyggd strandkant där båtar kan förtöja, lossa och lasta, eller för andra verksamheter för andra ändamål vid vattnet.');


-- AL40 Categories
INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL4', 'anläggning i vatten', 'Ospecificerad anläggning i vatten.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL41', 'båthamn', 'Anlagd plats för båtar, med skydd för hårt väder.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL42', 'brygga', 'Utbyggnad i vatten från strand eller kaj, för bad eller ankring av båtar.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL43', 'pir', 'En kraftig utbyggnad, vanligtvis av sten eller betong, som går från en strand ut i vattnet.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL44', 'kvarn', 'Byggnadsverk vid vattendrag, huvudsakligen i syfte att mala mjöl.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL45', 'vattenkraftverk', 'Anläggning i syfte att omvandla vattnets lägesenergi till elenergi.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL46', 'bro', 'Byggnadsverk som byggt i syfte att leda trafik över ett korsande hinder.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL40'), 'AL47', 'fördämning', 'Dammbyggnad för uppdämning av vattennivån i vattendrag eller sjö.');


-- AL50 Categories
INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL50'), 'AL5', 'frammande bottenmaterial', 'Främmande bottenmaterial i allmänhet.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL50'), 'AL51', 'anlagd botten', 'Bottnar som påtagligt förändrats genom konstruktioner och anläggningar.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL50'), 'AL52', 'tipp', 'Bottnar som påtagligt förändrats genom tippning av muddermassor eller annat material.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL50'), 'AL53', 'fiberbankar', 'Ansamlning av träfiber som uppstått genom industriutsläpp.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL50'), 'AL54', 'vrak', 'Fartyg eller annat större föremål som ligger sjunket eller står strandat.');

INSERT INTO public.survey_app_vm_values_sotv_ant (category_id, specific_code, biotopemark, description)
VALUES ((SELECT id FROM public.survey_app_vm_ecosystem_category_sotv_ant WHERE section_code = 'AL50'), 'AL55', 'artificiellt rev', 'Struktur av hårt material som människor har placerat på botten för att skapa ett rev.');
