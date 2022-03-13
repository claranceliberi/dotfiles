ALTER TABLE ONLY public.service_discovery ALTER COLUMN id SET DEFAULT nextval('public.service_discovery_id_seq'::regclass);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.std_intake_acdmic_levl_enrlmnt ALTER COLUMN id SET DEFAULT nextval('public.std_intake_acdmic_levl_enrlmnt_id_seq'::regclass);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_academic_year_period ALTER COLUMN id SET DEFAULT nextval('public.subject_academic_year_period_id_seq'::regclass);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_enrolment ALTER COLUMN id SET DEFAULT nextval('public.subject_enrolment_id_seq'::regclass);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.syllabus ALTER COLUMN id SET DEFAULT nextval('public.syllabus_id_seq'::regclass);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
;-- -. . -..- - / . -. - .-. -.--
COPY public.a_user (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, activated, activation_key, active_session, age_range, email, first_name, image_url, institution_id, institution_name, is_otp_active, last_name, level, login_try, otp, password, password_reset_period_in_days, phone, pin, profile_status, reset_date, reset_otp, send_communication_msg, token, user_type, username, academy_id, person_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.academic_period (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, end_on, name, period_type, start_on, academic_year_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.academic_program (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, code, current_admin_id, current_admin_names, description, name, total_num_modules, type, department_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.academic_program_intake_level (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, academic_program_level_id, academic_year_id, incharge_id, intake_program_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.academic_program_level (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, level_id, program_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.academic_year (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, actual_atart_on, actual_end_on, name, planned_end_on, planned_start_on, status, academy_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.academic_year_program_intake_level (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, actual_end_on, actual_start_on, planed_end_on, planed_start_on, progress_status, academic_program_level_id, academic_year_id, incharge_id, intake_program_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.academy (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, current_admin_id, email, fax_number, full_address, mission, moto, name, phone_number, post_code, short_name, website_link, total_num_departments, total_num_faculties, total_num_instructors, total_num_programs, total_num_students, institution_id, village_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.address (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, details, location_id, location_name, nationality, since_at_location, type, person_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.attachment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, content_format, description, file_type, original_file_name, path_to_file, purpose) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.audit_trail (id, action, entity, low_data, performed_by, performed_on, record_id, record_ref_number) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.autho_tracker (id, loged_in_on, status, token, username) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.chronical_disease (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, name) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.classe (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.division (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, code, description, division_type, name, total_num_childreen, academy_id, parent_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.experience (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, attachment, description, end_date, level, location, occupation, proof, start_date, type, person_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.hobby (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, name, person_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.institution (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, current_admin_id, email, fax_number, full_address, mission, moto, name, phone_number, post_code, short_name, website_link, village_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.instructor (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, institution_id, since_on, academy_id, user_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.instructor_deployment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, deployed_on, deployment_number, description, academy_id, instructor_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.instructor_level_enrolment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, academic_program_level_id, academic_year_id, intake_program_instructor_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.instructor_module_assignment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, course_module_id, intake_program_instructor_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.instructor_subject_assignment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, instructor_module_assignment_id, subject_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intake (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, actual_end_date, actual_start_date, code, description, expected_end_date, expected_start_date, intake_status, period_type, title, total_num_students, registration_control_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intake_academic_year_period (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, actual_end_on, actual_start_on, planed_end_on, planed_start_on, progress_status, academic_period_id, academic_year_program_intake_level_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intake_level_class (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, class_group_type, class_name, class_representative_one_id, class_representative_tree_id, class_representative_two_id, academic_year_program_intake_level_id, instructor_class_incharge_id, intake_academic_year_period_id, instructor_class_incharge_name) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intake_level_class_student (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, intake_level_class_id, student_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intake_program (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, intake_id, program_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intake_program_instructor (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, instructor_id, intake_program_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intake_program_student (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, completed_on, employee_number, enroled_on, enrolment_mode, enrolment_status, other_rank, rank_institution, third_party_reg_number, intake_program_id, rank_id, student_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.intk_acdmic_prgm_level_mdle (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, actual_end_on, actual_start_on, credits, intake_status, marks, module_participation, pass_mark, planned_end_on, planned_start_on, weight, academic_year_program_intake_level_id, incharge_id, module_id, intake_level_class_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.learning_materials_sharing (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, status, intake_id, learning_material_id, shared_by_id, user_group_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.lesson (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, content, title, subject_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.lesson_plan (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, class_policy, end_time, grading, lesson_objective, lesson_requirements, start_time, text_books, instructor_id, lesson_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.level (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, academy_id, code, description, flow, name) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.location (id, code, created_by_id, created_by_username, created_on, description, name, updated_by_id, updated_by_username, updated_on, level_id, parent_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.location_level (id, code, created_by_id, created_by_username, created_on, name, updated_by_id, updated_by_username, updated_on) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.module (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, code, description, has_prerequisite, name, status, total_num_subjects, program_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.module_enrolment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, enrolmed_on, instructor_evaluation, marks_obtained, module_enrolment_status, intake_academic_level_enrolment_id, intake_program_module_level_id, description, intake_academic_year_level_period_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.module_material (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, content, title, type, module_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.module_material_attachment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, attachment_id, material_id, learning_material_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.module_preriquist (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, module_id, prerequisite_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.next_of_kin (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, next_of_keen_proculation_reason, relation_ship, residence_id, residence_name, next_of_kin_id, user_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.notification (id, created_at, message, notification_status, notification_entity_beneficiary, notification_entity_beneficiary_uuid, notification_type, notification_user_beneficiary) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.password_reset_token (id, expiry_date, token, status, user_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.person (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, birth_date, blood_group, date_of_commission, date_of_issue, date_of_last_promotion, doc_type, document_expire_on, employment_number, father_names, first_name, last_name, marital_status, mother_names, nid_number, other_rank, phone_number, place_of_birth, place_of_birth_description, place_of_issue, rank_depart, sex, spouse_name, current_rank_id, place_of_birth_id, residence_location_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.person_disease (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, disease_id, person_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.person_hobby (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, hobby_id, person_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.person_language (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, language_id, speacker_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.person_religion (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, person_id, religion_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.privilege (id, description, feature_type, name, status) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.rank (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, category, description, name, institution_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.registration_control (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, actual_end_date, actual_start_date, description, expected_end_date, expected_start_date, academy_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.religion (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, name) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.role (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, name, status) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.role_privilege (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, assigned_on, status, privilege_id, role_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.s_language (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, code, description, name, origin) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.service_discovery (id, call_date_time, description, discovery_status, http_code, http_status, requested_service_id, requestor_service_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.service_registry (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, end_point, last_call_date_time, last_call_status, name, category, key, status, token, type, version) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.std_intake_acdmic_levl_enrlmnt (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, enrolment_status, "position", promotion_status, academic_year_program_level_id, intake_program_student_id, completed_on, enroled_on, enrolment_mode) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.student (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, reg_number, registered_on, academy_id, user_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.subject (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, content, title, module_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.subject_academic_year_period (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, actual_end_on, actual_start_on, marks, planned_end_on, planned_start_on, satus, incharge_id, intake_academic_year_period_id, intake_program_module_level_id, subject_id, intake_level_class_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.subject_enrolment (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, enroled_on, enrolment_status, obtained_marks, module_enrolment_id, subject_id, intake_academic_year_level_period_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.syllabus (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, class_policy, grading, module_objectives, module_requirements, status, text_books, developer_id, module_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.user_group (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, total_num_users, academy_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.user_group_member (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, user_id, user_group_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
COPY public.user_role (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, role_id, user_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.academic_program_intake_level_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.academic_year_program_intake_level_id_seq', 31, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.autho_tracker_id_seq', 2188, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.chronical_disease_id_seq', 6, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.experience_id_seq', 11, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.hobby_id_seq', 10, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.instructor_level_enrolment_id_seq', 24, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.intake_academic_year_period_id_seq', 50, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.intake_level_class_id_seq', 31, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.intake_level_class_student_id_seq', 65, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.intake_program_instructor_id_seq', 32, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.intake_program_student_id_seq', 52, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.intk_acdmic_prgm_level_mdle_id_seq', 24, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.learning_materials_sharing_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.lesson_plan_id_seq', 4, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.level_id_seq', 23, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.location_id_seq', 17467, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.location_level_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.module_material_attachment_id_seq', 12, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.module_material_id_seq', 5, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.module_preriquist_id_seq', 26, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.next_of_kin_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.notification_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.password_reset_token_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.person_disease_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.person_hobby_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.person_language_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.person_religion_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.privilege_id_seq', 5, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.religion_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.role_id_seq', 6, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.role_privilege_id_seq', 9, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.s_language_id_seq', 3, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.sequence_generator', 2101, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.service_discovery_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.std_intake_acdmic_levl_enrlmnt_id_seq', 64, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.subject_academic_year_period_id_seq', 7, true);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.subject_enrolment_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.syllabus_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
SELECT pg_catalog.setval('public.user_role_id_seq', 1, false);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT a_user_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_period
    ADD CONSTRAINT academic_period_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_intake_level
    ADD CONSTRAINT academic_program_intake_level_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_level
    ADD CONSTRAINT academic_program_level_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program
    ADD CONSTRAINT academic_program_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_year
    ADD CONSTRAINT academic_year_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_year_program_intake_level
    ADD CONSTRAINT academic_year_program_intake_level_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academy
    ADD CONSTRAINT academy_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.attachment
    ADD CONSTRAINT attachment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.audit_trail
    ADD CONSTRAINT audit_trail_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.autho_tracker
    ADD CONSTRAINT autho_tracker_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.chronical_disease
    ADD CONSTRAINT chronical_disease_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.division
    ADD CONSTRAINT division_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.experience
    ADD CONSTRAINT experience_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.institution
    ADD CONSTRAINT institution_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_deployment
    ADD CONSTRAINT instructor_deployment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_level_enrolment
    ADD CONSTRAINT instructor_level_enrolment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_module_assignment
    ADD CONSTRAINT instructor_module_assignment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_subject_assignment
    ADD CONSTRAINT instructor_subject_assignment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_academic_year_period
    ADD CONSTRAINT intake_academic_year_period_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_level_class
    ADD CONSTRAINT intake_level_class_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_level_class_student
    ADD CONSTRAINT intake_level_class_student_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake
    ADD CONSTRAINT intake_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program_instructor
    ADD CONSTRAINT intake_program_instructor_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program
    ADD CONSTRAINT intake_program_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program_student
    ADD CONSTRAINT intake_program_student_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intk_acdmic_prgm_level_mdle
    ADD CONSTRAINT intk_acdmic_prgm_level_mdle_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.learning_materials_sharing
    ADD CONSTRAINT learning_materials_sharing_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.lesson_plan
    ADD CONSTRAINT lesson_plan_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.location_level
    ADD CONSTRAINT location_level_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_enrolment
    ADD CONSTRAINT module_enrolment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_material_attachment
    ADD CONSTRAINT module_material_attachment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_material
    ADD CONSTRAINT module_material_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_preriquist
    ADD CONSTRAINT module_preriquist_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.next_of_kin
    ADD CONSTRAINT next_of_kin_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.password_reset_token
    ADD CONSTRAINT password_reset_token_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_disease
    ADD CONSTRAINT person_disease_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_hobby
    ADD CONSTRAINT person_hobby_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_language
    ADD CONSTRAINT person_language_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_religion
    ADD CONSTRAINT person_religion_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.privilege
    ADD CONSTRAINT privilege_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.rank
    ADD CONSTRAINT rank_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.registration_control
    ADD CONSTRAINT registration_control_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.religion
    ADD CONSTRAINT religion_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.role_privilege
    ADD CONSTRAINT role_privilege_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.s_language
    ADD CONSTRAINT s_language_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.service_discovery
    ADD CONSTRAINT service_discovery_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.service_registry
    ADD CONSTRAINT service_registry_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.std_intake_acdmic_levl_enrlmnt
    ADD CONSTRAINT std_intake_acdmic_levl_enrlmnt_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_academic_year_period
    ADD CONSTRAINT subject_academic_year_period_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_enrolment
    ADD CONSTRAINT subject_enrolment_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.syllabus
    ADD CONSTRAINT syllabus_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.level
    ADD CONSTRAINT uk_3a8oesbo90de97c9qqn70b7y7 UNIQUE (code);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT uk_3nstbuhppkiorpc6ms42mluut UNIQUE (username);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT uk_4ef1bnvodfqh7tud5x6doi1b6 UNIQUE (phone);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_deployment
    ADD CONSTRAINT uk_5r6msx641ucttihnckwxedsmp UNIQUE (deployment_number);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.institution
    ADD CONSTRAINT uk_9grdn54hea5ns8ahq4yogpb7u UNIQUE (email);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.student
    ADD CONSTRAINT uk_aawmi7s2h0jubly89g4yjn39g UNIQUE (reg_number);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academy
    ADD CONSTRAINT uk_b6k7saqspo11ijtk4jg6okck9 UNIQUE (phone_number);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program
    ADD CONSTRAINT uk_cij66jqtg5afqx9rwnufp5l7w UNIQUE (code);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.privilege
    ADD CONSTRAINT uk_h7iwbdg4ev8mgvmij76881tx8 UNIQUE (name);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.chronical_disease
    ADD CONSTRAINT uk_hmnqe78hd73a3at2d2ra48nlr UNIQUE (name);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.autho_tracker
    ADD CONSTRAINT uk_i1b756yapo8jbidnluw7259bu UNIQUE (token);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT uk_k94forvlsl9pq5wf5v1j7fg3u UNIQUE (email);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.level
    ADD CONSTRAINT uk_lrjnw0jty1fs19q56u0us8d0n UNIQUE (name);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.service_registry
    ADD CONSTRAINT uk_nmvikbf0i9ji5skl5wnv0tnmj UNIQUE (end_point);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT uk_ob40l46oegq7skmf3uqm8rynm UNIQUE (reset_otp);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academy
    ADD CONSTRAINT uk_od9j36q552ws8ywq5awpjds5l UNIQUE (email);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.service_registry
    ADD CONSTRAINT uk_oim9uwlio62t3n9hb0lpjjy8u UNIQUE (key);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.institution
    ADD CONSTRAINT uk_ppg7l2uf0vxwrgn41qbpv5dre UNIQUE (phone_number);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.service_registry
    ADD CONSTRAINT uk_q54y3bs4dp5kw37mnjbmi000n UNIQUE (name);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.s_language
    ADD CONSTRAINT uk_r5vwfbxxewn8g8cvu54hu257x UNIQUE (name);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT uk_rdg9wdkex3t0amns9wthxjcsi UNIQUE (activation_key);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_group_member
    ADD CONSTRAINT user_group_member_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academy
    ADD CONSTRAINT fk16lnso9mp6f1tpia1m9fi0f2 FOREIGN KEY (village_id) REFERENCES public.location(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_hobby
    ADD CONSTRAINT fk1cfwca41608jesrewli9j6m9l FOREIGN KEY (hobby_id) REFERENCES public.hobby(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_academic_year_period
    ADD CONSTRAINT fk1dvexe40t1fgvn5jhkflppb3a FOREIGN KEY (academic_year_program_intake_level_id) REFERENCES public.academic_year_program_intake_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_material_attachment
    ADD CONSTRAINT fk1fjmwtkevn6b3ody7wtlo8b65 FOREIGN KEY (material_id) REFERENCES public.module_material(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module
    ADD CONSTRAINT fk1q6dhlem1lbk7edykxn1hdwcq FOREIGN KEY (program_id) REFERENCES public.academic_program(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intk_acdmic_prgm_level_mdle
    ADD CONSTRAINT fk2r1elg17se86rjfbyw1l0u82r FOREIGN KEY (module_id) REFERENCES public.module(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_intake_level
    ADD CONSTRAINT fk36tala7dk7ag4ru45ygim17ts FOREIGN KEY (academic_program_level_id) REFERENCES public.academic_program_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.division
    ADD CONSTRAINT fk3e131579t4yp3wj9g6t6o264t FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_hobby
    ADD CONSTRAINT fk3u2q3f3k1m7bmnfuca39m51n7 FOREIGN KEY (person_id) REFERENCES public.person(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_year_program_intake_level
    ADD CONSTRAINT fk42jln37popgef8kcsv3qjcg3y FOREIGN KEY (academic_program_level_id) REFERENCES public.academic_program_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT fk457wne6ccwj21redlsnpo45i6 FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_intake_level
    ADD CONSTRAINT fk46h5odsbksdnpwx1orb1lynxn FOREIGN KEY (academic_year_id) REFERENCES public.academic_year(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_language
    ADD CONSTRAINT fk471gu4h9e9s41uqkqjs1ts2u6 FOREIGN KEY (speacker_id) REFERENCES public.person(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.learning_materials_sharing
    ADD CONSTRAINT fk4hln32noiq5p5f6o7le9e8nnj FOREIGN KEY (shared_by_id) REFERENCES public.a_user(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intk_acdmic_prgm_level_mdle
    ADD CONSTRAINT fk4hm3hyy80pe4jww5x7jw7hshv FOREIGN KEY (incharge_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_level
    ADD CONSTRAINT fk4l6cfseoofdmc8ot8l54h4aan FOREIGN KEY (program_id) REFERENCES public.academic_program(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.location
    ADD CONSTRAINT fk4q6f46degvubomxra8635ag3y FOREIGN KEY (level_id) REFERENCES public.location_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person
    ADD CONSTRAINT fk5devnwf7b7nulhu6plgq7hl0s FOREIGN KEY (current_rank_id) REFERENCES public.rank(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_level_enrolment
    ADD CONSTRAINT fk5i6xl1n1c3a1u4phv5yhf919l FOREIGN KEY (academic_program_level_id) REFERENCES public.academic_program_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_level_enrolment
    ADD CONSTRAINT fk62p38l4jcdateq6t2k8y7tlqv FOREIGN KEY (academic_year_id) REFERENCES public.academic_year(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program_student
    ADD CONSTRAINT fk6j67jm74br9t00qgroq9hyy FOREIGN KEY (intake_program_id) REFERENCES public.intake_program(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.experience
    ADD CONSTRAINT fk6w0u2511reisy6wp0589w7fyn FOREIGN KEY (person_id) REFERENCES public.person(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_material_attachment
    ADD CONSTRAINT fk7bdui9bos1biwddtk0wx3jffy FOREIGN KEY (learning_material_id) REFERENCES public.module_material(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_level_class_student
    ADD CONSTRAINT fk7fu8gtyfab9bmo1ff21uiuxlu FOREIGN KEY (intake_level_class_id) REFERENCES public.intake_level_class(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.lesson_plan
    ADD CONSTRAINT fk7hl5awcyte23wmmdyrj8av5p9 FOREIGN KEY (instructor_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program
    ADD CONSTRAINT fk7m7nlmsy5f851v1wea43ioib3 FOREIGN KEY (department_id) REFERENCES public.division(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program
    ADD CONSTRAINT fk7m8w6xn1g7r9b37y05w4hx74x FOREIGN KEY (program_id) REFERENCES public.academic_program(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT fk7qaqmpfrcn4ygl393mirmjnd2 FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT fk7ydr23s8y9j6lip5qrngoymx4 FOREIGN KEY (subject_id) REFERENCES public.subject(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.address
    ADD CONSTRAINT fk81ihijcn1kdfwffke0c0sjqeb FOREIGN KEY (person_id) REFERENCES public.person(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program_instructor
    ADD CONSTRAINT fk8gijypy5cjrw3yaty2bfedtey FOREIGN KEY (instructor_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.a_user
    ADD CONSTRAINT fk8py7ihbybdk5ih633dycyft9i FOREIGN KEY (person_id) REFERENCES public.person(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_enrolment
    ADD CONSTRAINT fk8uoqcm1wbqde20yw3g3m6am10 FOREIGN KEY (intake_program_module_level_id) REFERENCES public.intk_acdmic_prgm_level_mdle(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_preriquist
    ADD CONSTRAINT fk8xf447fl2il5u1h9vdo2irsik FOREIGN KEY (module_id) REFERENCES public.module(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_year_program_intake_level
    ADD CONSTRAINT fk9qxvu3e7ecca8xd4d6gy4350g FOREIGN KEY (academic_year_id) REFERENCES public.academic_year(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fka68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES public.role(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.syllabus
    ADD CONSTRAINT fkaayv4ym0tlhwouinq8438v427 FOREIGN KEY (module_id) REFERENCES public.module(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.learning_materials_sharing
    ADD CONSTRAINT fkastwdr2vce5lqvh99e46gcaot FOREIGN KEY (learning_material_id) REFERENCES public.module_material(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_academic_year_period
    ADD CONSTRAINT fkb00pf19m1qq6rwu6h82q0vsyo FOREIGN KEY (subject_id) REFERENCES public.subject(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake
    ADD CONSTRAINT fkbyc11p3pq4ya929h0hadlp3m6 FOREIGN KEY (registration_control_id) REFERENCES public.registration_control(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.lesson_plan
    ADD CONSTRAINT fkcbnrsd75hwoqhevdhiyhu7ekh FOREIGN KEY (lesson_id) REFERENCES public.lesson(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_academic_year_period
    ADD CONSTRAINT fkd0c2xo4i6xieno0ido5vc2fqg FOREIGN KEY (academic_period_id) REFERENCES public.academic_period(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program
    ADD CONSTRAINT fkd9awnpqvkv554aj5tkwjguoc FOREIGN KEY (intake_id) REFERENCES public.intake(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.role_privilege
    ADD CONSTRAINT fkdkwbrwb5r8h74m1v7dqmhp99c FOREIGN KEY (privilege_id) REFERENCES public.privilege(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_group_member
    ADD CONSTRAINT fkdx0s19tepv2djy8v9n6citn1s FOREIGN KEY (user_group_id) REFERENCES public.user_group(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_year
    ADD CONSTRAINT fke3jqabhuldg4qdhg5e6wmgt21 FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.syllabus
    ADD CONSTRAINT fkecexi2ds7jk786hu2qs79cbv FOREIGN KEY (developer_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkejx3byik0c8hgmd56dt9ecp5t FOREIGN KEY (user_id) REFERENCES public.a_user(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academy
    ADD CONSTRAINT fkelh8berme867jtpqndfdffpfe FOREIGN KEY (institution_id) REFERENCES public.institution(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.next_of_kin
    ADD CONSTRAINT fkevv5il5fp5gilieeel65t18e0 FOREIGN KEY (user_id) REFERENCES public.a_user(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_level
    ADD CONSTRAINT fkf6en0x5ixepf8tub9whdew026 FOREIGN KEY (level_id) REFERENCES public.level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.student
    ADD CONSTRAINT fkg7142ftu9gtquivptbjlec0qf FOREIGN KEY (user_id) REFERENCES public.a_user(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_level_class
    ADD CONSTRAINT fkhc58nb729p676iew3elyqrmcp FOREIGN KEY (instructor_class_incharge_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_intake_level
    ADD CONSTRAINT fkhedcwmholskx9nry2vdowb0tp FOREIGN KEY (incharge_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_language
    ADD CONSTRAINT fkhiile3woiemaa07a4clk95vk FOREIGN KEY (language_id) REFERENCES public.s_language(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_year_program_intake_level
    ADD CONSTRAINT fki8sapb3h0ou423qmvxaelnns3 FOREIGN KEY (intake_program_id) REFERENCES public.intake_program(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_preriquist
    ADD CONSTRAINT fki9mw64cjut3qrjp5n4cchawy8 FOREIGN KEY (prerequisite_id) REFERENCES public.module(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT fkifihhdqo3x2f09bs8gjmca7kv FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_material_attachment
    ADD CONSTRAINT fkj6fl7cioettvb70adurrj4j32 FOREIGN KEY (attachment_id) REFERENCES public.attachment(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_academic_year_period
    ADD CONSTRAINT fkj7adul7e50nhwdpli0jaaeobq FOREIGN KEY (intake_level_class_id) REFERENCES public.intake_level_class(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_year_program_intake_level
    ADD CONSTRAINT fkjfg6vqms3w1udv09irxmqwnqo FOREIGN KEY (incharge_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_level_class
    ADD CONSTRAINT fkjrtjbp9doj91ioptnihki953x FOREIGN KEY (intake_academic_year_period_id) REFERENCES public.intake_academic_year_period(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program_student
    ADD CONSTRAINT fkkjkqa820hj0lj8t2nk73imin0 FOREIGN KEY (rank_id) REFERENCES public.rank(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject
    ADD CONSTRAINT fkkkvebb515mwafu9lgn2n6vjs0 FOREIGN KEY (module_id) REFERENCES public.module(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_level_class
    ADD CONSTRAINT fkkx3hk4h5e13wqes3kf0ca11aw FOREIGN KEY (academic_year_program_intake_level_id) REFERENCES public.academic_year_program_intake_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_program_intake_level
    ADD CONSTRAINT fkl1ef63d4w5022ryr7pbqaqkm9 FOREIGN KEY (intake_program_id) REFERENCES public.intake_program(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program_instructor
    ADD CONSTRAINT fkm1780satcd8i8ty5y3pgqwc4x FOREIGN KEY (intake_program_id) REFERENCES public.intake_program(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_disease
    ADD CONSTRAINT fkm1juq73qahwlbti5gv87j0r1p FOREIGN KEY (person_id) REFERENCES public.person(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.location
    ADD CONSTRAINT fkm5xl34yboc8re75qsac6svt6g FOREIGN KEY (parent_id) REFERENCES public.location(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT fkmri0mu0y2w3eksyn6r76hada8 FOREIGN KEY (user_id) REFERENCES public.a_user(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_academic_year_period
    ADD CONSTRAINT fkmsj19gymvqp0xoyjd8it2x8f9 FOREIGN KEY (incharge_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_deployment
    ADD CONSTRAINT fkn25npg3nghe7q85axt25miadf FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_enrolment
    ADD CONSTRAINT fknyjma7i10pog0y8t61fe3juw8 FOREIGN KEY (module_enrolment_id) REFERENCES public.module_enrolment(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_academic_year_period
    ADD CONSTRAINT fko3am7b0ho6ap2yn6n85vjinwc FOREIGN KEY (intake_program_module_level_id) REFERENCES public.intk_acdmic_prgm_level_mdle(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intk_acdmic_prgm_level_mdle
    ADD CONSTRAINT fko4meo0ta3l6ov09nlpvxq1nak FOREIGN KEY (academic_year_program_intake_level_id) REFERENCES public.academic_year_program_intake_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_program_student
    ADD CONSTRAINT fkoew7xx2blmqie864npc9ds2n7 FOREIGN KEY (student_id) REFERENCES public.student(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_enrolment
    ADD CONSTRAINT fkos9opmnfeia0y2dwgci7jq137 FOREIGN KEY (intake_academic_level_enrolment_id) REFERENCES public.std_intake_acdmic_levl_enrlmnt(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.std_intake_acdmic_levl_enrlmnt
    ADD CONSTRAINT fkosngc3ggt2qciuou51xc9h0og FOREIGN KEY (academic_year_program_level_id) REFERENCES public.academic_year_program_intake_level(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.division
    ADD CONSTRAINT fkov2bn1vsi0rx72e2d6aeyhg41 FOREIGN KEY (parent_id) REFERENCES public.division(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.user_group_member
    ADD CONSTRAINT fkp5cssg7nau45feaotj6edhxgh FOREIGN KEY (user_id) REFERENCES public.a_user(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_level_enrolment
    ADD CONSTRAINT fkpg6lcxlbnyn8tchoov066fve5 FOREIGN KEY (intake_program_instructor_id) REFERENCES public.intake_program_instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.instructor_deployment
    ADD CONSTRAINT fkpvrr6xtkneyx5ogpr6pesg5ol FOREIGN KEY (instructor_id) REFERENCES public.instructor(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.module_material
    ADD CONSTRAINT fkqdbaut1svt2kbdr2twi56jwgj FOREIGN KEY (module_id) REFERENCES public.module(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_enrolment
    ADD CONSTRAINT fkqmutp3sxlt0dgu1e2wgngkld3 FOREIGN KEY (subject_id) REFERENCES public.subject(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.registration_control
    ADD CONSTRAINT fkqnowwp84oh8hg4731jngv10f0 FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.institution
    ADD CONSTRAINT fkqt4vu3pqb4cjf5r66emmu3lay FOREIGN KEY (village_id) REFERENCES public.location(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.student
    ADD CONSTRAINT fkqv02q25603d5oytnds4l9y3gs FOREIGN KEY (academy_id) REFERENCES public.academy(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.intake_level_class_student
    ADD CONSTRAINT fkr5fm3seaotjxkqsh3jjgehgkg FOREIGN KEY (student_id) REFERENCES public.student(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.learning_materials_sharing
    ADD CONSTRAINT fkrluw6iomvp6dgy6xm7gjf8t6g FOREIGN KEY (intake_id) REFERENCES public.intake(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.learning_materials_sharing
    ADD CONSTRAINT fkrswnwnhxfmxed3eif5swafolc FOREIGN KEY (user_group_id) REFERENCES public.user_group(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.academic_period
    ADD CONSTRAINT fks12qg7lwa83nequ3mc2aio10s FOREIGN KEY (academic_year_id) REFERENCES public.academic_year(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.std_intake_acdmic_levl_enrlmnt
    ADD CONSTRAINT fks5s9j9y4y69jajqtnta1ld520 FOREIGN KEY (intake_program_student_id) REFERENCES public.intake_program_student(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.person_disease
    ADD CONSTRAINT fkskrp4jtclcp9unc6r01sge33e FOREIGN KEY (disease_id) REFERENCES public.chronical_disease(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.next_of_kin
    ADD CONSTRAINT fksl8o8m3hnrv5vhd48fb5f53i7 FOREIGN KEY (next_of_kin_id) REFERENCES public.person(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.role_privilege
    ADD CONSTRAINT fksykrtrdngu5iexmbti7lu9xa FOREIGN KEY (role_id) REFERENCES public.role(id);
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE ONLY public.subject_academic_year_period
    ADD CONSTRAINT fky4bbrt0ku4u6ghcecg6s9yya FOREIGN KEY (intake_academic_year_period_id) REFERENCES public.intake_academic_year_period(id);
;-- -. . -..- - / . -. - .-. -.--
select * from a_user;