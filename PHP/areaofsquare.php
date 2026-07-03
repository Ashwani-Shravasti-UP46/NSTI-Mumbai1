<?php
/*
=====================================================
PRACTICAL: PHP Program to Find Area of Square
=====================================================

AIM:
- To write a PHP program that calculates
  the area of a square.

OBJECTIVE:
- To read the side of a square from user.
- To apply formula: Area = side × side
- To display the result.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept side of square from user.
2) Apply formula: Area = side × side
3) Display calculated area.
4) End.

STEPS TO RUN:
- Save file as: area_square.php
- Open in browser: http://localhost/area_square.php
- Enter side value and check.

=====================================================
PHP CODE (area_square.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Area of Square</title>
</head>
<body>
  <h1>Area of Square (PHP)</h1>

  <form method="post">
    <label>Enter side of square:</label><br>
    <input type="number" name="side" step="0.01" min="0" required>
    <button type="submit">Calculate</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $side = (float)$_POST["side"];
    $area = $side * $side;

    echo "<p>Side: $side</p>";
    echo "<h3>Area of Square = " . round($area, 2) . "</h3>";
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: Side = 6  
Output: Area of Square = 36  

Input: Side = 12.5  
Output: Area of Square = 156.25  

=================================================
RESULT:
- Successfully implemented a PHP program that
  calculates area of a square.
=================================================
*/
?>
</body>
</html>
