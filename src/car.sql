--№1. Отображать только марки и модели автомобилей, а также цену автомобиля.
select brand, model, price from cars;
--#2 Отображение количества всех автомобилей
select count(*) from cars;
--#3 Показать все автомобили марки Hyundai.
select brand from cars;
--#4 Показать все красные и синие машины
select * from cars where color in ('Blue', 'Red');
--#5 Отобразить все автомобили, выпущенные в период с 2000 по 2010 год.
select * from cars where year_of_issue between 2000 and 2010;
--#6 Отображение количества автомобилей марки Chevrolet.
select count(*) from cars where brand like 'Chevrolet';
--#7 Отображение среднего года выпуска автомобилей
select avg(year_of_issue) from cars;
--№8. Отобразите автомобили, бренды которых равны Audi, Toyota, Kia и Ford.
select * from cars where brand in ( 'Audi'  ,'Toyota' , 'Kia', 'Ford');
--#9. Отображать автомобили, модель которых начинается с буквы «Т».
select * from cars where brand like 'A%';
--#10 Отобразите автомобили, где модель автомобиля заканчивается на «е»;
select * from cars where brand like '%e';
--#11. Отображать бренды, содержащие всего 5 символов.
select * from cars where length(brand) > 5;
--#12 Отобразить все суммы, где марка автомобиля Mercedes-Benz
select sum(price) from cars where brand = 'Mercedes-Benz';
--#13 Отобразите самую дорогую и самую дешевую машину
select max(price), min(price) from cars;
--#14 Показать все автомобили, марка которых не TOYOTA
select * from cars where brand not in ('TOYOTA');
--#15 Показать 10 самых дорогих автомобилей
select * from cars order by price desc limit 10;
--#16. Показывайте новейшие автомобили с 5 по 15 место.
select * from cars order by  price desc offset 4 limit 15;
--#17 Отображать автомобили, у которых год выпуска  между 1995 и 2005;
select * from cars where year_of_issue between 1995 and 2005;
--№18. Отображать большинство автомобилей одним цветом.
select color, count(*) as nur from cars group by color order by nur desc limit 1;
