<?php
/*
=====================================================
PRACTICAL: PHP Program to Find Area of Circle
=====================================================

AIM:
- To write a PHP program that calculates
  the area of a circle.

OBJECTIVE:
- To read the radius from user.
- To apply formula: Area = π × r × r
- To display the result.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept radius (r) from user.
2) Apply formula: Area = π × r × r
3) Display calculated area.
4) End.

STEPS TO RUN:
- Save file as: area_circle.php
- Open in browser: http://localhost/area_circle.php
- Enter radius and check.

=====================================================
PHP CODE (area_circle.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Area of Circle</title>
</head>
<body>
  <h1>Area of Circle (PHP)</h1>

  <form method="post">
    <label>Enter radius of circle:</label><br>
    <input type="number" name="radius" step="0.01" min="0" required>
    <button type="submit">Calculate</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $r = (float)$_POST["radius"];
    $area = pi() * $r * $r;

    echo "<p>Radius: $r</p>";
    echo "<h3>Area of Circle = " . round($area, 2) . "</h3>";
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: Radius = 7  
Output: Area of Circle = 153.94  

Input: Radius = 10  
Output: Area of Circle = 314.16  

=================================================
RESULT:
- Successfully implemented a PHP program that
  calculates area of a circle.
=================================================
*/
?>
</body>
</html>
