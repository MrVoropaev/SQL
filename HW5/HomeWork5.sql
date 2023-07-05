CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);
INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    

# Создание представления с автомобилями стоимостью до 25 000 долларов:

CREATE VIEW cars_under_25000 AS
SELECT *
FROM cars
WHERE cost < 25000;

# Изменение представления с измененным порогом для стоимости до 30 000 долларов:

ALTER VIEW cars_under_25000 AS
SELECT *
FROM cars
WHERE cost < 30000;

# Создание представления с автомобилями марки "Шкода" и "Ауди":

CREATE VIEW skoda_and_audi_cars AS
SELECT *
FROM cars
WHERE name IN ("Skoda", "Audi");

# Ранжированный список автомобилей по цене в порядке возрастания:

SELECT *, ROW_NUMBER() OVER (ORDER BY cost) AS 'rank'
FROM cars

# Топ-3 самых дорогих автомобилей и их общая стоимость:

SELECT *
FROM (
    SELECT *, SUM(cost) OVER (ORDER BY cost DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS total_cost
    FROM cars
) AS sub
WHERE 'rank' <= 3;


# Список автомобилей, у которых цена больше предыдущей цены:

SELECT *
FROM (
    SELECT *, LAG(cost) OVER (ORDER BY cost) AS previous_cost
    FROM cars
) AS sub
WHERE cost > previous_cost;


# Список автомобилей, у которых цена меньше следующей цены:

SELECT *
FROM (
    SELECT *, LEAD(cost) OVER (ORDER BY cost) AS next_cost
    FROM cars
) AS sub
WHERE cost < next_cost;


# Список автомобилей, отсортированный по возрастанию цены, с добавленным столбцом разницы между текущей ценой и ценой следующего автомобиля:

SELECT *, LEAD(cost) OVER (ORDER BY cost) - cost AS price_difference
FROM cars
ORDER BY cost;











