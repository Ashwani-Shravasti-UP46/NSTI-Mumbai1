<?php
/*
=====================================================
PRACTICAL: PHP Program for Multiple Products (Array)
=====================================================

AIM:
- To write a PHP program that accepts multiple product
  details (name, price, quantity) and calculates total
  value for each product.

OBJECTIVE:
- To read details of multiple products using array.
- To calculate total value = price × quantity for each.
- To display all product details in tabular format.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Create an array of products with name, price, quantity.
2) For each product, calculate total = price × quantity.
3) Display details in HTML table.
4) End.

STEPS TO RUN:
- Save file as: products_array.php
- Open in browser: http://localhost/products_array.php
- View output.

=====================================================
PHP CODE (products_array.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Multiple Products</title>
</head>
<body>
  <h1>Multiple Products & Total Value (PHP)</h1>

<?php
// Array of products (can be dynamic from DB/form also)
$products = [
    ["name" => "Pen", "price" => 10, "qty" => 5],
    ["name" => "Notebook", "price" => 50, "qty" => 3],
    ["name" => "Bag", "price" => 750, "qty" => 1],
    ["name" => "Pencil", "price" => 5, "qty" => 10]
];

echo "<table border='1' cellpadding='8' cellspacing='0'>";
echo "<tr><th>Product</th><th>Price (₹)</th><th>Quantity</th><th>Total Value (₹)</th></tr>";

foreach ($products as $p) {
    $total = $p["price"] * $p["qty"];
    echo "<tr>
            <td>{$p["name"]}</td>
            <td>{$p["price"]}</td>
            <td>{$p["qty"]}</td>
            <td>$total</td>
          </tr>";
}

echo "</table>";
?>

<?php
/*
================= SAMPLE OUTPUT =================

Product    | Price | Quantity | Total Value
--------------------------------------------
Pen        |  10   |    5     |   50
Notebook   |  50   |    3     |  150
Bag        | 750   |    1     |  750
Pencil     |   5   |   10     |   50

=================================================
RESULT:
- Successfully implemented a PHP program that
  stores multiple products in an array and calculates
  their total value.
=================================================
*/
?>
</body>
</html>
