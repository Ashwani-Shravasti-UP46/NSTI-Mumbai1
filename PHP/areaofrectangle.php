<?php
/*
=====================================================
PRACTICAL: PHP Program to Find Area of Rectangle
=====================================================

AIM:
- To write a PHP program that calculates
  the area of a rectangle.

OBJECTIVE:
- To read length and breadth from user.
- To apply formula: Area = length × breadth
- To display the result.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept length and breadth from user.
2) Apply formula: Area = length × breadth
3) Display calculated area.
4) End.

STEPS TO RUN:
- Save file as: area_rectangle.php
- Open in browser: http://localhost/area_rectangle.php
- Enter values and check.

=====================================================
PHP CODE (area_rectangle.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Area of Rectangle</title>
</head>
<body>
  <h1>Area of Rectangle (PHP)</h1>

  <form method="post">
    <label>Enter length:</label><br>
    <input type="number" name="length" step="0.01" min="0" required><br><br>

    <label>Enter breadth:</label><br>
    <input type="number" name="breadth" step="0.01" min="0" required><br><br>

    <button type="submit">Calculate</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $length  = (float)$_POST["length"];
    $breadth = (float)$_POST["breadth"];

    $area = $length * $breadth;

    echo "<p>Length: $length , Breadth: $breadth</p>";
    echo "<h3>Area of Rectangle = " . round($area, 2) . "</h3>";
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: Length = 10, Breadth = 5  
Output: Area of Rectangle = 50  

Input: Length = 7.5, Breadth = 3.2  
Output: Area of Rectangle = 24  

=================================================
RESULT:
- Successfully implemented a PHP program that
  calculates area of a rectangle.
=================================================
*/
?>
</body>
</html>
