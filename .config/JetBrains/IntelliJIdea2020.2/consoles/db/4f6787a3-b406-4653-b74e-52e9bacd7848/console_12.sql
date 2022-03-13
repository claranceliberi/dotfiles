-- INSERT INTO privilege (description, feature_type, name, status)
-- VALUES
--        ('User will be able to access privileges','ADMIN','CAN_ACCESS_PRIVILEGES','ACTIVE'),
--        ('User willl be able to teach module','ADMIN','CAN_TEACH_MODULE','ACTIVE');

-- 8404228d-ea59-444e-a138-78f70edbfcbe

select ipsm.* from intake_program_student ipsm
    inner join
    (select  ips.student_id,ips.promotion_enrolment_status from intake_program_student ips
        where ips.promotion_enrolment_status='RETAKE' group by ips.student_id,ips.promotion_enrolment_status) h
        ON ipsm.student_id = h.student_id
               and intake_program_id in
                   (select ip.id from intake_program ip where ip.intake_id in
                                                              (select itk.id from intake itk where itk.registration_control_id in
                                                                                                   (select rc.id from registration_control rc where rc.academy_id='8404228d-ea59-444e-a138-78f70edbfcbe')))