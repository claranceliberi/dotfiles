select siale.* from std_intake_acdmic_levl_enrlmnt siale

-- academic_year_program_level_id 17
-- prd 14

SELECT h.*,a.* FROM (SELECT ips.student_id,siale.* FROM intake_program_student ips
                                                         INNER JOIN std_intake_acdmic_levl_enrlmnt siale
                                                                    ON ips.id = siale.intake_program_student_id AND  siale.academic_year_program_level_id=17) a
LEFT JOIN
(SELECT DISTINCT  ilsc.student_id FROM intake_level_class_student ilsc
                                           INNER JOIN intake_level_class ils
                                                      ON ils.id = ilsc.intake_level_class_id AND ils.intake_academic_year_period_id = 14) h
ON a.student_id = h.student_id
WHERE h.student_id IS NULL;

