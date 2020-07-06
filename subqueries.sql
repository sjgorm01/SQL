/* Subqueries  


Uses Multiple Select statements (to pull one column)


*/

SELECT Customer_name, Customer_contact
FROM Customers
WHERE cust_id IN
    SELECT customer_id
    FROM Orders
    WHERE order_number IN (SELECT order_number
        FROM OrderItems
            WHERE prod_name = 'Toothbrush');
            
  /*  WEBSITE   POORSQL to format  */
  
  
  
  SELECT customer_name
    ,customer_state
    (SELECT COUNT(*) AS orders
    FROM Orders
    WHERE Orders.customer_id = Customer.customer_id) AS orders
  FROM customers
  ORDER BY Customer_name