mysql> select * from product;
+------+--------------+-------+-------------+
| P_ID | PRODUCT_NAME | PRICE | CATEGORY    |
+------+--------------+-------+-------------+
|    1 | LEPTOP       | 66000 | Electronics |
|    2 | mobile       | 33000 | electronics |
|    3 | hydrophone   | 22000 | electronics |
|    4 | TV           | 49500 | electronics |
|    5 | refrigerator | 49500 | electronics |
|    6 | chair        |  1650 | furniture   |
|    7 | tables       |  5500 | furniture   |
|    8 | sofa         | 27500 | furniture   |
+------+--------------+-------+-------------+
8 rows in set (0.00 sec)

mysql> select product_name, price from product
    -> where category = "furniture";
+--------------+-------+
| product_name | price |
+--------------+-------+
| chair        |  1650 |
| tables       |  5500 |
| sofa         | 27500 |
+--------------+-------+
3 rows in set (0.05 sec)

mysql> select product_name, price from product
    -> where category = "electronics";
+--------------+-------+
| product_name | price |
+--------------+-------+
| LEPTOP       | 66000 |
| mobile       | 33000 |
| hydrophone   | 22000 |
| TV           | 49500 |
| refrigerator | 49500 |
+--------------+-------+
5 rows in set (0.00 sec)

mysql> select category, avg(price) from product
    -> group by category;
+-------------+------------+
| category    | avg(price) |
+-------------+------------+
| Electronics | 44000.0000 |
| furniture   | 11550.0000 |
+-------------+------------+
2 rows in set (0.07 sec)


mysql> select category, count(category) from product
    -> group by category
    -> ;
+-------------+-----------------+
| category    | count(category) |
+-------------+-----------------+
| Electronics |               5 |
| furniture   |               3 |
+-------------+-----------------+
2 rows in set (0.05 sec)

mysql> select category, count(category) from product
    -> group by category
    -> having count(category)>2;
+-------------+-----------------+
| category    | count(category) |
+-------------+-----------------+
| Electronics |               5 |
| furniture   |               3 |
+-------------+-----------------+
2 rows in set (0.00 sec)

mysql> select category, count(category) from product
    -> group by category
    -> having count(category)>3;
+-------------+-----------------+
| category    | count(category) |
+-------------+-----------------+
| Electronics |               5 |
+-------------+-----------------+
1 row in set (0.00 sec)

mysql> select category,count(product_name) from product
    -> group by category
    -> having count(product_name)>2;
+-------------+---------------------+
| category    | count(product_name) |
+-------------+---------------------+
| Electronics |                   5 |
| furniture   |                   3 |
+-------------+---------------------+
2 rows in set (0.00 sec)

mysql> select category, avg(price) from product
    -> group by category
    -> having avg(price)>20000;
+-------------+------------+
| category    | avg(price) |
+-------------+------------+
| Electronics | 44000.0000 |
+-------------+------------+
1 row in set (0.00 sec)

mysql> select category, max(price) from product
    -> group by category;
+-------------+------------+
| category    | max(price) |
+-------------+------------+
| Electronics |      66000 |
| furniture   |      27500 |
+-------------+------------+
2 rows in set (0.00 sec)

mysql> select * from product;
+------+--------------+-------+-------------+
| P_ID | PRODUCT_NAME | PRICE | CATEGORY    |
+------+--------------+-------+-------------+
|    1 | LEPTOP       | 66000 | Electronics |
|    2 | mobile       | 33000 | electronics |
|    3 | hydrophone   | 22000 | electronics |
|    4 | TV           | 49500 | electronics |
|    5 | refrigerator | 49500 | electronics |
|    6 | chair        |  1650 | furniture   |
|    7 | tables       |  5500 | furniture   |
|    8 | sofa         | 27500 | furniture   |
+------+--------------+-------+-------------+
8 rows in set (0.00 sec)

mysql> select  PRODUCT_NAME, count(category) from prodcut group by category;
mysql> select category, max(price) from product
    -> group by category;
+-------------+------------+
| category    | max(price) |
+-------------+------------+
| Electronics |      66000 |
| furniture   |      27500 |
+-------------+------------+
2 rows in set (0.00 sec)
mysql> select PRODUCT_NAME, max(price) from product group by PRODUCT_NAME;
+--------------+------------+
| PRODUCT_NAME | max(price) |
+--------------+------------+
| LEPTOP       |      66000 |
| mobile       |      33000 |
| hydrophone   |      22000 |
| TV           |      49500 |
| refrigerator |      49500 |
| chair        |       1650 |
| tables       |       5500 |
| sofa         |      27500 |
+--------------+------------+
8 rows in set (0.00 sec)

mysql> SELECT p.category, p.product_name, p.price
    -> FROM product p
    -> JOIN (
    ->     SELECT category, MAX(price) AS max_price
    ->     FROM product
    ->     GROUP BY category
    -> ) m
    -> ON p.category = m.category
    -> AND p.price = m.max_price;
+-------------+--------------+-------+
| category    | product_name | price |
+-------------+--------------+-------+
| Electronics | LEPTOP       | 66000 |
| furniture   | sofa         | 27500 |
+-------------+--------------+-------+
2 rows in set (0.01 sec)

mysql>
mysql> SELECT category, MAX(price)
    -> FROM product
    -> GROUP BY category;
+-------------+------------+
| category    | MAX(price) |
+-------------+------------+
| Electronics |      66000 |
| furniture   |      27500 |
+-------------+------------+
2 rows in set (0.00 sec)

mysql> select * from product;
+------+--------------+-------+-------------+
| P_ID | PRODUCT_NAME | PRICE | CATEGORY    |
+------+--------------+-------+-------------+
|    1 | LEPTOP       | 66000 | Electronics |
|    2 | mobile       | 33000 | electronics |
|    3 | hydrophone   | 22000 | electronics |
|    4 | TV           | 49500 | electronics |
|    5 | refrigerator | 49500 | electronics |
|    6 | chair        |  1650 | furniture   |
|    7 | tables       |  5500 | furniture   |
|    8 | sofa         | 27500 | furniture   |
+------+--------------+-------+-------------+
8 rows in set (0.00 sec)




Q. 3 Create a table PRODUCT and perform operations.

Fields.-
Productid (int, primary key.
Product name varchar(50)
Price int
Category);
Create the product table and insert 10 products.
Insert into product values
(1, 'LEPTOP', 60000, 'Electronics'),
(2, 'mobile', 30000, 'electronics'),
(3, 'hydrophone', 20000, 'electronics'),
(4, 'TV', 45000, 'electronics'),
(5, 'refrigerator', 45000, 'electronics'),
(6, 'chair', 1500, 'furniture'),
(7, 'tables', 5000, 'furniture'),
(8, 'sofa', 25000, 'furniture'),
(9, 'bools', 500, 'stationery'),
(10, 'pens', 100, 'stationery');
1.  Displaying all products.
         SELECT * FROM PRODUCT;

2.  Display all products of category electronics.
         SELECT * FROM PRODUCT WHERE CATEGORY = "Electronics";

3.  increase prices of all products of 10%.
         UPDATE PRODUCT SET PRICE = PRICE+(price*0.10);

4.  delete product costing < 1000.
        	DELETE FROM PRODUCT WHERE PRICE = 1000;

5.  Display the Products  name of category furniture ;
    	SELECT PRODUCT_NAME, PRICE FROM PRODUCT
		WHERE CATEGORY = "FURNITURE";

6.  total number of products in each category;
	    SELECT CATEGORY, COUNT(CATEGORY) FROM PRODUCT
		GROUP BY CATEGORY;

7.  average prices of each category 
	         SELECT CATEGORY, AVG(price) FROM PRODUCT GROUP BY CATEGORY;

8.  categories having more than 2 products (HAVING);
          	SELECT CATEGORY, COUNT(category) FROM PRODUCT
		    GROUP BY CATEGORY HAVING COUNT(price) > 2 ;

9.   categories with average price > 20000;
             SELECT CATEGORY, AVG(price) FROM PRODUCT
		    GROUP BY CATEGORY HAVING AVG(price) > 20000;

10.  maximum prices in each category;
	       SELECT CATEGORY, MAX(price) FROM PRODUCT GROUP BY CATEGORY;

11. .  minimum prices in each category.
     	     SELECT CATEGORY, MIN(price) FROM PRODUCT	GROUP BY CATEGORY;

12.  categories having product price > 30000.
              SELECT * FROM PRODUCT WHERE PRICE > 30000;

13 products ordered by price (DESC).
	          SELECT * FROM PRODUCT ORDER BY PRICE DESC;

14.  Total price of products in each category.
       	     SELECT CATEGORY, SUM(price) FROM PRODUCT GROUP BY CATEGORY;

15.  categories having total price > 50000.
            SELECT CATEGORY, SUM(price) FROM PRODUCT
	         GROUP BY CATEGORY HAVING SUM(price) >50000;

16.  products costing more than 10000.
          SELECT COUNT(price) FROM PRODUCT WHERE PRICE > 10000;
