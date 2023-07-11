CREATE DATABASE HomeWork6;
USE HomeWork6;


# Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DELIMITER //

CREATE FUNCTION format_seconds(secs INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE result VARCHAR(100);
    
    SET days = secs DIV (24 * 60 * 60);
    SET secs = secs MOD (24 * 60 * 60);
    SET hours = secs DIV (60 * 60);
    SET secs = secs MOD (60 * 60);
    SET minutes = secs DIV 60;
    SET secs = secs MOD 60;
    
    SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', secs, ' seconds');
    
    RETURN result;
END //

DELIMITER ;

SELECT format_seconds(123456);

# Создайте процедуру, которая выводит только четные числа от 1 до 10. Пример: 2,4,6,8,10 

DELIMITER //

CREATE PROCEDURE print_even_numbers()
BEGIN
    DECLARE i INT;
    SET i = 2;
    
    WHILE i <= 10 DO
        SELECT i;
        SET i = i + 2;
    END WHILE;
END //

DELIMITER ;

CALL print_even_numbers;
