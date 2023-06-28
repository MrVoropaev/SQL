SELECT 
  id,
  employee_id,
  amount,
  order_status,
  CASE 
    WHEN order_status = 'OPEN' THEN 'Order is in open state'
    WHEN order_status = 'CLOSED' THEN 'Order is closed'
    WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
  END AS full_order_status
FROM orders;
