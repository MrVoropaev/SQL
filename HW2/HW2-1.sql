SELECT 
  id,
  order_date,
  count_product,
  CASE 
    WHEN count_product < 100 THEN 'Маленький заказ'
    WHEN count_product >= 100 AND count_product <= 300 THEN 'Средний заказ'
    WHEN count_product > 300 THEN 'Большой заказ'
  END AS тип_заказа
FROM sales;
