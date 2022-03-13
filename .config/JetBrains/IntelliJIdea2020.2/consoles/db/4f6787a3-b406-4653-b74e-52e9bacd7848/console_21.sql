select rp.id,rp.role_id,rp.privilege_id,p.name from role_privilege rp inner join privilege p on p.id = rp.privilege_id where rp.role_id = 10;
SELECT * from user_role WHERE user_id='01f1aeb8-1b79-11ec-8607-9bad32d1ac60';
