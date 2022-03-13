insert into a_user(id,username,email,first_name,last_name,password,user_type,active_session,token,phone,activated,password_reset_period_in_days,created_on,profile_status) values
('01f1aeb8-1b79-11ec-8607-9bad32d1ac60','admin','admin@gmail.com','admin first name','admin last name','$2a$10$VfHAbiCluRn3p9cD4Q9Ie.iHRPZePELoR.DcCKcbJhvfn3srPHcXu','ADMIN',true,'thetoken','0783660012',true,90,now(),'INCOMPLETE');;
insert into institution(id,name,phone_number,email,current_admin_id,created_on)
values ('6bc27062-3adc-4b0d-95be-40874c6f4536','Institution name','07xxxxxxxxxx','institution@gmail.com','01f1aeb8-1b79-11ec-8607-9bad32d1ac60',now());
UPDATE a_user SET institution_id='6bc27062-3adc-4b0d-95be-40874c6f4536' where id='01f1aeb8-1b79-11ec-8607-9bad32d1ac60';

