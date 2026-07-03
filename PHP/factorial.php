<?php
/*
=====================================================
PRACTICAL: PHP Program to Find Factorial of a Number
=====================================================

AIM:
- To write a PHP program that calculates the factorial
  of a given number.

OBJECTIVE:
- To read a number from user.
- To calculate factorial using loop.
- To display result.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept a number from user (through form).
2) Initialize factorial = 1.
3) Run loop i = 1 to number:
   factorial = factorial * i.
4) Print factorial result.
5) End.

STEPS TO RUN:
- Save file as: factorial.php
- Open in browser: http://localhost/factorial.php
- Enter number and check.

=====================================================
PHP CODE (factorial.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Factorial Program</title>
</head>
<body>
  <h1>Factorial Calculation (PHP)</h1>

  <form method="post">
    <label>Enter a number:</label><br>
    <input type="number" name="num" min="0" required>
    <button type="submit">Calculate</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $num = (int)$_POST["num"];
    $fact = 1;

    if ($num < 0) {
        echo "<p>Factorial is not defined for negative numbers.</p>";
    } else {
        for ($i = 1; $i <= $num; $i++) {
            $fact *= $i;
        }
        echo "<p>Factorial of $num is $fact.</p>";
    }
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: 5  
Output: Factorial of 5 is 120.

Input: 0  
Output: Factorial of 0 is 1.

=================================================
RESULT:
- Successfully implemented a PHP program that
  calculates the factorial of a given number.
=================================================
*/
?>
</body>
</html>
