select * from usuarios;

select weekday('2017-04-18');

select date_sub(now(),INTERVAL 1 WEEK);

SELECT DATE_ADD(CURDATE(), INTERVAL - WEEKDAY(CURDATE()) DAY);