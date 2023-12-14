-- GROUP CLASSIFICATION
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
