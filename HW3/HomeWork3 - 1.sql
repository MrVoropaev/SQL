-- Создаем базу данных

-- CREATE database HomeWork3;

-- Создаем таблицу
/* CREATE TABLE staff (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    post VARCHAR(50) NOT NULL,
    seniority INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    age INT NOT NULL
);
-- Заполняем значениями
INSERT INTO staff (id, firstname, lastname, post, seniority, salary, age)
VALUES
(1, 'Вася', 'Петров', 'Начальник', 40, 100000, 60),
(2, 'Петр', 'Власов', 'Начальник', 8, 70000, 30),
(3, 'Катя', 'Катина', 'Инженер', 2, 70000, 25),
(4, 'Саша', 'Сасин', 'Инженер', 12, 50000, 35),
(5, 'Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
(6, 'Петр', 'Петров', 'Рабочий', 20, 25000, 40),
(7, 'Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
(8, 'Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
(9, 'Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
(10, 'Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
(11, 'Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
(12, 'Людмила', 'Маркина', 'Уборщик', 10, 10000, 49); 


-- сортировка в порядке убывания по полю salary
SELECT * FROM staff
ORDER BY salary DESC; 

-- сортировка в порядке возрастания по полю salary
SELECT * FROM staff
ORDER BY salary ASC; 

-- 5 максимальных заработных плат
SELECT * FROM staff
ORDER BY salary DESC
LIMIT 5; 

-- суммарная зарплата по каждой специальности (выведем в total_salary)
SELECT post, SUM(salary) AS total_salary
FROM staff
GROUP BY post; 

-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT COUNT(*) AS count_employees
FROM staff
WHERE post = 'Рабочий' AND age BETWEEN 24 AND 49; 

-- Найдите количество специальностей
SELECT COUNT(DISTINCT post) AS count_specialties
FROM staff; 

-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет включительно
SELECT post
FROM staff
GROUP BY post
HAVING AVG(age) <= 30; */










