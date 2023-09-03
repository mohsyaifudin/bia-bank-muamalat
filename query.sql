SELECT
  o.Date order_date,
  p2.CategoryName category_name,
  p.ProdName product_name,
  p.Price product_price,
  o.Quantity order_qty,
  p.Price * o.Quantity total_sales,
  c.CustomerEmail cust_email,
  c.CustomerCity cust_city
FROM `Final_Task.Orders` o
LEFT JOIN `Final_Task.Products` p ON o.ProdNumber = p.ProdNumber
LEFT JOIN `Final_Task.Customers` c ON o.CustomerID = c.CustomerID
LEFT JOIN `Final_Task.ProductCategory` p2 ON p.Category = p2.CategoryID
ORDER BY o.Date;

