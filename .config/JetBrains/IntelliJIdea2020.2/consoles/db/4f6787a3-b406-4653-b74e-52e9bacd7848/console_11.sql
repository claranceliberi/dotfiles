select * from user_role;
select r.* from role r inner join user_role ur on r.id = ur.role_id where ur.user_id='ba551d40-e363-4d16-a278-fd485bd65fe0';

select * from role_privilege;
