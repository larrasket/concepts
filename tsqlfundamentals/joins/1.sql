use learning;
create table temptable
(
    id int
);
insert into temptable
values
    (1),
    (2),
    (3),
    (4),
    (5);

select stf.staff_id empid, stf.first_name firstname, last_name lastname, tmp.id n
from sales.staffs as stf cross join temptable as tmp
order by firstname, n;

drop table temptable;
