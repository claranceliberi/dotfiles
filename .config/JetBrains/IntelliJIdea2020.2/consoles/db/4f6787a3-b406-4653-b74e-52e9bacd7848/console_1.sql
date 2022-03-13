select ipsm.* from intake_program_student ipsm
    inner join
    (select  ips.student_id,ips.enrolment_status from intake_program_student ips  where ips.enrolment_status='APPROVED' group by ips.student_id,ips.enrolment_status) h
ON ipsm.student_id = h.student_id  and intake_program_id in (select ip.id from intake_program ip where ip.intake_id in (
    select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')
));


