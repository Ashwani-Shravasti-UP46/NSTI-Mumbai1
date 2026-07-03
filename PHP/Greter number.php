<?php
/*
=====================================================
PRACTICAL: PHP Program to Find Greatest of Three Numbers
=====================================================

AIM:
- To write a PHP program that finds the greatest number
  among three given numbers.

OBJECTIVE:
- To read three numbers from user.
- To compare numbers using conditional statements.
- To display the greatest number.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept three numbers from user.
2) Compare them using if...else if...else.
3) If first > second and first > third → first is greatest.
4) Else if second > third → second is greatest.
5) Else third is greatest.
6) Display result.

STEPS TO RUN:
- Save file as: greatest.php
- Open in browser: http://localhost/greatest.php
- Enter three numbers and check.

=====================================================
PHP CODE (greatest.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Greatest of Three Numbers</title>
</head>
<body>
  <h1>Greatest of Three Numbers (PHP)</h1>

  <form method="post">
    <label>Enter first number:</label><br>
    <input type="number" name="num1" required><br><br>

    <label>Enter second number:</label><br>
    <input type="number" name="num2" required><br><br>

    <label>Enter third number:</label><br>
    <input type="number" name="num3" required><br><br>

    <button type="submit">Find Greatest</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $a = (int)$_POST["num1"];
    $b = (int)$_POST["num2"];
    $c = (int)$_POST["num3"];

    if ($a >= $b && $a >= $c) {
        $greatest = $a;
    } elseif ($b >= $a && $b >= $c) {
        $greatest = $b;
    } else {
        $greatest = $c;
    }

    echo "<p>Greatest number among $a, $b and $c is: $greatest</p>";
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: 10, 25, 17  
Output: Greatest number among 10, 25 and 17 is: 25  

Input: 5, 3, 9  
Output: Greatest number among 5, 3 and 9 is: 9  

=================================================
RESULT:
- Successfully implemented a PHP program that
  finds the greatest among three numbers.
=================================================
*/
?>
</body>
</html>
