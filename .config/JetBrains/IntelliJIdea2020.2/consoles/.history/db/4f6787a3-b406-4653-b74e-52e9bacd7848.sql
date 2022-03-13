select username from a_user;
;-- -. . -..- - / . -. - .-. -.--
select *, row_number() over (partition by ips.student_id and ips.enrolment_status) from intake_program_student ips where ips.enrolment_status='APPROVED';
;-- -. . -..- - / . -. - .-. -.--
select *, row_number() over (partition by ips.student_id,ips.enrolment_status) from intake_program_student ips where ips.enrolment_status='APPROVED';
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) from intake_program_student ips where ips.enrolment_status='APPROVED';
;-- -. . -..- - / . -. - .-. -.--
select * from intake_program_student ipsm
    inner join
    (select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) from intake_program_student ips where ips.enrolment_status='APPROVED') h
ON ipsm.student_id = h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select * from intake_program_student ipsm
    inner join
    (select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) as existance_number from intake_program_student ips where ips.enrolment_status='APPROVED') h
ON ipsm.student_id = h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select * from intake_program_student ipsm
    inner join
    (select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) as existance_number from intake_program_student ips where ips.enrolment_status='APPROVED') h
ON ipsm.student_id = h.student_id and existance_number = 1;
;-- -. . -..- - / . -. - .-. -.--
select ipsm.* from intake_program_student ipsm
    inner join
    (select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) as existance_number from intake_program_student ips where ips.enrolment_status='APPROVED') h
ON ipsm.student_id = h.student_id and existance_number = 1;
;-- -. . -..- - / . -. - .-. -.--
select * from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46';
;-- -. . -..- - / . -. - .-. -.--
select rc.id,rc.academy_id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46';
;-- -. . -..- - / . -. - .-. -.--
select * from intake itk where itk.registration_control_id in (select rc.id,rc.academy_id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46');
;-- -. . -..- - / . -. - .-. -.--
select * from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46');
;-- -. . -..- - / . -. - .-. -.--
select * from intake_program ip where ip.intake_id in (
    select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')
);
;-- -. . -..- - / . -. - .-. -.--
select ip.id from intake_program ip where ip.intake_id in (
    select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')
);
;-- -. . -..- - / . -. - .-. -.--
select ip.id,row_number() over (partition by ip.id) from intake_program ip where ip.intake_id in (
    select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')
);
;-- -. . -..- - / . -. - .-. -.--
select ipsm.* from intake_program_student ipsm
    inner join
    (select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) as existance_number from intake_program_student ips where ips.enrolment_status='APPROVED') h
ON ipsm.student_id = h.student_id and existance_number = 1 and intake_program_id in (select ip.id from intake_program ip where ip.intake_id in (
    select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')
));
;-- -. . -..- - / . -. - .-. -.--
select  ips.student_id,ips.enrolment_status from intake_program_student ips group by ips.student_id,ips.enrolment_status;
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) as existance_number from intake_program_student ips where ips.enrolment_status='APPROVED';
;-- -. . -..- - / . -. - .-. -.--
select * from (select ips.student_id,ips.enrolment_status, row_number() over (partition by ips.student_id,ips.enrolment_status) as existance_number from intake_program_student ips where ips.enrolment_status='APPROVED') h where h.existance_number = 1;
;-- -. . -..- - / . -. - .-. -.--
select  ips.student_id,ips.enrolment_status from intake_program_student ips  where ips.enrolment_status='APPROVED' group by ips.student_id,ips.enrolment_status;
;-- -. . -..- - / . -. - .-. -.--
select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46';
;-- -. . -..- - / . -. - .-. -.--
select ip.id from intake_program ip where ip.intake_id in (
    select itk.id from intake itk where exists (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46');
;-- -. . -..- - / . -. - .-. -.--
select itk.id from intake itk where exists (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46');
;-- -. . -..- - / . -. - .-. -.--
select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46');
;-- -. . -..- - / . -. - .-. -.--
select ipsm.* from intake_program_student ipsm
    inner join
    (select  ips.student_id,ips.enrolment_status from intake_program_student ips  where ips.enrolment_status='APPROVED' group by ips.student_id,ips.enrolment_status) h
ON ipsm.student_id = h.student_id  and intake_program_id in (select ip.id from intake_program ip where ip.intake_id in (
    select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')
));
;-- -. . -..- - / . -. - .-. -.--
select ipsm.* from intake_program_student ipsm
                       inner join
                   (select  ips.student_id,ips.enrolment_status from intake_program_student ips  where ips.enrolment_status='APPROVED' group by ips.student_id,ips.enrolment_status) h
                   ON ipsm.student_id = h.student_id  inner join
                   (select ip.id from intake_program ip where ip.intake_id in (
                       select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')
                   )) a
                   ON a.id = ipsm.intake_program_id;
;-- -. . -..- - / . -. - .-. -.--
select ipsm.* from intake_program_student ipsm inner join (select  ips.student_id,ips.enrolment_status from intake_program_student ips  where ips.enrolment_status='APPROVED' group by ips.student_id,ips.enrolment_status) h ON ipsm.student_id = h.student_id  and intake_program_id in (select ip.id from intake_program ip where ip.intake_id in (select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='c9d6ecd8-c74e-435b-a681-78d0ccb2ae46')));
;-- -. . -..- - / . -. - .-. -.--
select * from std_intake_acdmic_levl_enrlmnt;
;-- -. . -..- - / . -. - .-. -.--
select std.* from student std where std.id in (select ips.student_id from intake_program_student ips);
;-- -. . -..- - / . -. - .-. -.--
select std.* from student std where std.id in (select ips.student_id from intake_program_student ips where ips.id in (select siale.intake_program_student_id from std_intake_acdmic_levl_enrlmnt siale));
;-- -. . -..- - / . -. - .-. -.--
select * from intake_level_class ils where ils.intake_academic_year_period_id = 14;
;-- -. . -..- - / . -. - .-. -.--
select * from intake_level_class_student ilsc where ilsc.intake_level_class_id in (select ils.id from intake_level_class ils where ils.intake_academic_year_period_id = 14);
;-- -. . -..- - / . -. - .-. -.--
select std.* from student std where std.id in (select ips.student_id from intake_program_student ips where ips.id in (select siale.intake_program_student_id from std_intake_acdmic_levl_enrlmnt siale where siale.academic_year_program_level_id=17));
;-- -. . -..- - / . -. - .-. -.--
select std.* from student std where std.id in (select ips.student_id from intake_program_student ips where ips.id in (select siale.intake_program_student_id from std_intake_acdmic_levl_enrlmnt siale where siale.academic_year_program_level_id=17))  and std.id not in (select DISTINCT ilsc.student_id from intake_level_class_student ilsc where ilsc.intake_level_class_id in (select ils.id from intake_level_class ils where ils.intake_academic_year_period_id = 14));
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id from intake_program_student ips
inner join
   std_intake_acdmic_levl_enrlmnt siale
on siale.academic_year_program_level_id=17;
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id from intake_program_student ips
inner join
   std_intake_acdmic_levl_enrlmnt siale
on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17;
;-- -. . -..- - / . -. - .-. -.--
select DISTINCT  ilsc.student_id from intake_level_class_student ilsc inner join intake_level_class ils on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14;
;-- -. . -..- - / . -. - .-. -.--
select DISTINCT ilsc.student_id from intake_level_class_student ilsc where ilsc.intake_level_class_id in (select ils.id from intake_level_class ils where ils.intake_academic_year_period_id = 14);
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id from intake_program_student ips
inner join
   std_intake_acdmic_levl_enrlmnt siale
inner join
(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc inner join intake_level_class ils on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17 and h.student_id = ips.student_id;
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id from intake_program_student ips
inner join std_intake_acdmic_levl_enrlmnt siale
inner join (select DISTINCT  ilsc.student_id from intake_level_class_student ilsc inner join intake_level_class ils on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17 and h.student_id = ips.student_id;
;-- -. . -..- - / . -. - .-. -.--
select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
            inner join intake_level_class ils
                on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14;
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id from intake_program_student ips
inner join std_intake_acdmic_levl_enrlmnt siale
on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17;
;-- -. . -..- - / . -. - .-. -.--
select a.student_id from (select ips.student_id from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
left outer join
(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on h.student_id = a.student_id;
;-- -. . -..- - / . -. - .-. -.--
select a.student_id from (select ips.student_id from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
left join
(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on h.student_id = a.student_id;
;-- -. . -..- - / . -. - .-. -.--
select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14;
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17;
;-- -. . -..- - / . -. - .-. -.--
select a.student_id from (select ips.student_id from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
EXCEPT select h.* from
(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h;
;-- -. . -..- - / . -. - .-. -.--
select a.student_id from (select ips.student_id from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
EXCEPT
select h.* from
(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h;
;-- -. . -..- - / . -. - .-. -.--
select a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
left outer join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id = h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
left outer join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id <> h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
inner join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id <> h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
inner join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id = h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select a.*,h.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
inner join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id = h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select h.*,a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
inner join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id = h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select h.*,a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
left join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id = h.student_id
where h.student_id = null;
;-- -. . -..- - / . -. - .-. -.--
select h.*,a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
left join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id = h.student_id;
;-- -. . -..- - / . -. - .-. -.--
select h.*,a.* from (select ips.student_id,siale.* from intake_program_student ips
                                                         inner join std_intake_acdmic_levl_enrlmnt siale
                                                                    on ips.id = siale.intake_program_student_id and  siale.academic_year_program_level_id=17) a
left join

(select DISTINCT  ilsc.student_id from intake_level_class_student ilsc
                                           inner join intake_level_class ils
                                                      on ils.id = ilsc.intake_level_class_id and ils.intake_academic_year_period_id = 14) h
on a.student_id = h.student_id
where h.student_id is NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT h.*,a.* FROM (SELECT ips.student_id,siale.* FROM intake_program_student ips
                                                         INNER JOIN std_intake_acdmic_levl_enrlmnt siale
                                                                    ON ips.id = siale.intake_program_student_id AND  siale.academic_year_program_level_id=17) a
LEFT JOIN

(SELECT DISTINCT  ilsc.student_id FROM intake_level_class_student ilsc
                                           INNER JOIN intake_level_class ils
                                                      ON ils.id = ilsc.intake_level_class_id AND ils.intake_academic_year_period_id = 14) h
ON a.student_id = h.student_id
WHERE h.student_id IS NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT h.*,a.* FROM (SELECT ips.student_id,siale.* FROM intake_program_student ips
                                                         INNER JOIN std_intake_acdmic_levl_enrlmnt siale
                                                                    ON ips.id = siale.intake_program_student_id AND  siale.academic_year_program_level_id=17) a
LEFT JOIN
(SELECT DISTINCT  ilsc.student_id FROM intake_level_class_student ilsc
                                           INNER JOIN intake_level_class ils
                                                      ON ils.id = ilsc.intake_level_class_id AND ils.intake_academic_year_period_id = 14) h
ON a.student_id = h.student_id
WHERE h.student_id IS NULL;
;-- -. . -..- - / . -. - .-. -.--
select std.* from student std
where std.id in
      (select ips.student_id from intake_program_student ips
      where ips.id in
            (select siale.intake_program_student_id from std_intake_acdmic_levl_enrlmnt siale
            where siale.academic_year_program_level_id=17))
  and std.id not in
      (select DISTINCT ilsc.student_id from intake_level_class_student ilsc where ilsc.intake_level_class_id in (select ils.id from intake_level_class ils where ils.intake_academic_year_period_id = 14));
;-- -. . -..- - / . -. - .-. -.--
select ips.student_id from intake_program_student ips
  where ips.id in
        (select siale.intake_program_student_id from std_intake_acdmic_levl_enrlmnt siale
        where siale.academic_year_program_level_id=17)
  and ips.student_id not in
      (select DISTINCT ilsc.student_id from intake_level_class_student ilsc where ilsc.intake_level_class_id in (select ils.id from intake_level_class ils where ils.intake_academic_year_period_id = 14));
;-- -. . -..- - / . -. - .-. -.--
SELECT h.*,a.* FROM (SELECT ips.student_id,siale.* FROM intake_program_student ips INNER JOIN std_intake_acdmic_levl_enrlmnt siale ON ips.id = siale.intake_program_student_id AND  siale.academic_year_program_level_id=17) a LEFT JOIN (SELECT DISTINCT  ilsc.student_id FROM intake_level_class_student ilsc INNER JOIN intake_level_class ils ON ils.id = ilsc.intake_level_class_id AND ils.intake_academic_year_period_id = 14) h ON a.student_id = h.student_id WHERE h.student_id IS NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT ,a.* FROM (SELECT ips.student_id,siale.* FROM intake_program_student ips INNER JOIN std_intake_acdmic_levl_enrlmnt siale ON ips.id = siale.intake_program_student_id AND  siale.academic_year_program_level_id=17) a LEFT JOIN (SELECT DISTINCT  ilsc.student_id FROM intake_level_class_student ilsc INNER JOIN intake_level_class ils ON ils.id = ilsc.intake_level_class_id AND ils.intake_academic_year_period_id = 14) h ON a.student_id = h.student_id WHERE h.student_id IS NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM information_schema.table_constraints;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM information_schema.table_constraints tc where tc.table_name='level';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM information_schema.table_constraints tc where tc.table_name='level' and tc.constraint_type='UNIQUE';
;-- -. . -..- - / . -. - .-. -.--
\d level;;
;-- -. . -..- - / . -. - .-. -.--
d level;;
;-- -. . -..- - / . -. - .-. -.--
ALTER TABLE level DROP CONSTRAINT uk_lrjnw0jty1fs19q56u0us8d0n;
;-- -. . -..- - / . -. - .-. -.--
insert into a_user(id,username,email,first_name,last_name,password,user_type,active_session,token,phone,activated,password_reset_period_in_days,created_on) values
('01f1aeb8-1b79-11ec-8607-9bad32d1ac60','admin','admin@gmail.com','admin first name','admin last name','$2a$10$VfHAbiCluRn3p9cD4Q9Ie.iHRPZePELoR.DcCKcbJhvfn3srPHcXu','ADMIN',true,'thetoken','0783660012',true,90,now());
;-- -. . -..- - / . -. - .-. -.--
insert into a_user(id,username,email,first_name,last_name,password,user_type,active_session,token,phone,activated,password_reset_period_in_days,created_on,profile_status) values
('01f1aeb8-1b79-11ec-8607-9bad32d1ac60','admin','admin@gmail.com','admin first name','admin last name','$2a$10$VfHAbiCluRn3p9cD4Q9Ie.iHRPZePELoR.DcCKcbJhvfn3srPHcXu','ADMIN',true,'thetoken','0783660012',true,90,now(),'INCOMPLETE');
;-- -. . -..- - / . -. - .-. -.--
COPY public.location (id, code, created_by_id, created_by_username, created_on, description, name, updated_by_id, updated_by_username, updated_on, level_id, parent_id) FROM stdin;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(l.id) from  location l;
;-- -. . -..- - / . -. - .-. -.--
insert into a_user(id,username,email,first_name,last_name,password,user_type,active_session,token,phone,activated,password_reset_period_in_days,created_on,profile_status) values
('01f1aeb8-1b79-11ec-8607-9bad32d1ac60','admin','admin@gmail.com','admin first name','admin last name','$2a$10$VfHAbiCluRn3p9cD4Q9Ie.iHRPZePELoR.DcCKcbJhvfn3srPHcXu','SUPER_ADMIN',true,'thetoken','0783660012',true,90,now(),'INCOMPLETE');
;-- -. . -..- - / . -. - .-. -.--
insert into institution(id,name,phone_number,email,current_admin_id,created_on)
values ('6bc27062-3adc-4b0d-95be-40874c6f4536','Institution name','07xxxxxxxxxx','institution@gmail.com','01f1aeb8-1b79-11ec-8607-9bad32d1ac60',now());
;-- -. . -..- - / . -. - .-. -.--
UPDATE a_user SET institution_id='6bc27062-3adc-4b0d-95be-40874c6f4536' where id='01f1aeb8-1b79-11ec-8607-9bad32d1ac60';
;-- -. . -..- - / . -. - .-. -.--
select count(lc.id) from location lc;
;-- -. . -..- - / . -. - .-. -.--
select * from user_role;
;-- -. . -..- - / . -. - .-. -.--
select * from role;
;-- -. . -..- - / . -. - .-. -.--
select r.* from role r inner join user_role ur on r.id = ur.role_id where ur.user_id='ba551d40-e363-4d16-a278-fd485bd65fe0';
;-- -. . -..- - / . -. - .-. -.--
select p.* from privilege p inner join role_privilege rp on p.id = rp.privilege_id where rp.role_id='1';
;-- -. . -..- - / . -. - .-. -.--
UPDATE privilege SET status='ACTIVE' WHERE status IS Null;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO privilege (description, feature_type, name, status)
VALUES
       ('User will be able to access privileges','ADMIN','CAN_ACCESS_PRIVILEGES','ACTIVE'),
       ('User willl be able to teach module','ADMIN','CAN_TEACH_MODULE','ACTIVE');
;-- -. . -..- - / . -. - .-. -.--
select ipsm.* from intake_program_student ipsm inner join (select  ips.student_id,ips.promotion_enrolment_status from intake_program_student ips  where ips.promotion_enrolment_status='RETAKE' group by ips.student_id,ips.promotion_enrolment_status) h ON ipsm.student_id = h.student_id  and intake_program_id in (select ip.id from intake_program ip where ip.intake_id in (select itk.id from intake itk where itk.registration_control_id in (select rc.id from registration_control rc where rc.academy_id='8404228d-ea59-444e-a138-78f70edbfcbe')));
;-- -. . -..- - / . -. - .-. -.--
select rc.id from registration_control rc where rc.academy_id='8404228d-ea59-444e-a138-78f70edbfcbe');
;-- -. . -..- - / . -. - .-. -.--
select rc.id from registration_control rc where rc.academy_id='8404228d-ea59-444e-a138-78f70edbfcbe';
;-- -. . -..- - / . -. - .-. -.--
select itk.id from intake itk where itk.registration_control_id in
                                                                                                   (select rc.id from registration_control rc where rc.academy_id='8404228d-ea59-444e-a138-78f70edbfcbe');
;-- -. . -..- - / . -. - .-. -.--
select ip.id from intake_program ip where ip.intake_id in
                                                              (select itk.id from intake itk where itk.registration_control_id in
                                                                                                   (select rc.id from registration_control rc where rc.academy_id='8404228d-ea59-444e-a138-78f70edbfcbe'));
;-- -. . -..- - / . -. - .-. -.--
select  ips.student_id,ips.promotion_enrolment_status from intake_program_student ips
        where ips.promotion_enrolment_status='RETAKE';
;-- -. . -..- - / . -. - .-. -.--
select  ips.student_id,ips.promotion_enrolment_status from intake_program_student ips;
;-- -. . -..- - / . -. - .-. -.--
select * from a_user;
;-- -. . -..- - / . -. - .-. -.--
select * from a_user where username = 'admin';
;-- -. . -..- - / . -. - .-. -.--
UPDATE a_user SET password = '$2a$10$VfHAbiCluRn3p9cD4Q9Ie.iHRPZePELoR.DcCKcbJhvfn3srPHcXu' where username = 'admin';
;-- -. . -..- - / . -. - .-. -.--
select id,name from privilege;
;-- -. . -..- - / . -. - .-. -.--
select id,name from privilege where feature_type = 'ADMIN';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO role (id, created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, name, status, academy_id, institution_id, type)
VALUES (1, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-01 21:44:13.285000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-01 21:44:13.285000', 'super admin role', 'ROLE SUPER ADMIN', 'ACTIVE', null, '6bc27062-3adc-4b0d-95be-40874c6f4536', 'INSTITUTION');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO role ( created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, name, status, academy_id, institution_id, type)
VALUES ( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-01 21:44:13.285000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-01 21:44:13.285000', 'super admin role', 'ROLE SUPER ADMIN', 'ACTIVE', null, '6bc27062-3adc-4b0d-95be-40874c6f4536', 'INSTITUTION');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO user_role ( created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, description, role_id, user_id)
VALUES ( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-05 13:15:19.628000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-05 13:15:19.628000', null, 10, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO role_privilege ( created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, assigned_on, status, privilege_id, role_id)
VALUES
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 453, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 455, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 456, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 457, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 458, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 459, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 6, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 7, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 8, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 5, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 435, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 436, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 437, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 438, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 447, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 448, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 449, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 446, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 206, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 207, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 208, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 209, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 210, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 211, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 212, 10);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO public.privilege ( description, feature_type, name, status) VALUES ('User will be able to assign roles to other users', 'ADMIN', 'CAN_ASSIGN_ROLE', 'ACTIVE');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO public.role_privilege ( created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, assigned_on, status, privilege_id, role_id) VALUES
 ( 'ba551d40-e363-4d16-a278-fd485bd65fe0', 'adminTest', '2022-01-19 10:37:07.904000', 'ACTIVE', null, 'ba551d40-e363-4d16-a278-fd485bd65fe0', 'adminTest', '2022-01-19 10:37:07.904000', '2022-01-19 10:37:07.899000', 'ACTIVE', 461, 10);
;-- -. . -..- - / . -. - .-. -.--
select * from privilege where name = 'CAN_ACCESS_INSTRUCTORS_ON_PROGRAM';
;-- -. . -..- - / . -. - .-. -.--
select * from role_privilege;
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE role_privilege;
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE privilege;
;-- -. . -..- - / . -. - .-. -.--
TRUNCATE privilege CASCADE;
;-- -. . -..- - / . -. - .-. -.--
select * from privilege;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO role_privilege ( created_by_id, created_by_username, created_on, generic_status, last_status_change_reason, updated_by_id, updated_by_username, updated_on, assigned_on, status, privilege_id, role_id)
VALUES
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 131, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 132, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 133, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 134, 10),
( '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', 'ACTIVE', null, '01f1aeb8-1b79-11ec-8607-9bad32d1ac60', 'admin', '2022-02-10 14:39:22.532000', '2022-02-10 14:39:22.532000', 'ACTIVE', 159, 10);
;-- -. . -..- - / . -. - .-. -.--
DO
$do$
    BEGIN
        FOR i IN 1..25 LOOP
                SELECT 'NAME';
            END LOOP;
    END
$do$;
;-- -. . -..- - / . -. - .-. -.--
DO
$do$
    BEGIN
        FOR i IN 1..25 LOOP
                SELECT 'NAME' as name;
            END LOOP;
    END
$do$;
;-- -. . -..- - / . -. - .-. -.--
select id,name from role;
;-- -. . -..- - / . -. - .-. -.--
select * from role_privilege where role_id = 10;
;-- -. . -..- - / . -. - .-. -.--
select rp.id,rp.role_id,rp.privilege_id,p.name from role_privilege rp inner join privilege p on p.id = rp.privilege_id where rp.role_id = 10;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO public.privilege (id, description, feature_type, name, status) VALUES (166, 'User will be able to access, create, view evaluation', 'EVALUATION', 'CAN_MANAGE_EVALUATIONS', 'ACTIVE');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO public.privilege (id, description, feature_type, name, status)
VALUES
       (167, 'User will be able to teach in levels in a program in a certain intake', 'ADMIN', 'CAN_TEACH_IN_INTAKE_PROGRAM_LEVELS', 'ACTIVE'),
       (168, 'User will be able to learn levels in a program in a certain intake', 'ADMIN', 'CAN_LEARN_IN_INTAKE_PROGRAM_LEVELS', 'ACTIVE');