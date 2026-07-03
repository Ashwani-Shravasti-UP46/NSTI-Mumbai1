<?php
/*
=====================================================
PRACTICAL: PHP Program to Check Even or Odd
=====================================================

AIM:
- To write a PHP program that checks whether
  a given number is even or odd.

OBJECTIVE:
- To read a number from user.
- To use modulus operator (%) to check divisibility by 2.
- If divisible by 2 → Even number.
- Otherwise → Odd number.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept a number from user (through form).
2) If number % 2 == 0 → print "Even".
3) Else → print "Odd".
4) End.

STEPS TO RUN:
- Save file as: evenodd.php
- Open in browser: http://localhost/evenodd.php
- Enter number and check.

=====================================================
PHP CODE (evenodd.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Even Odd Check</title>
</head>
<body>
  <h1>Even / Odd Check (PHP)</h1>

  <form method="post">
    <label>Enter a number:</label><br>
    <input type="number" name="num" required>
    <button type="submit">Check</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $num = (int)$_POST["num"];

    if ($num % 2 == 0) {
        echo "<p>$num is an Even Number.</p>";
    } else {
        echo "<p>$num is an Odd Number.</p>";
    }
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: 10  
Output: 10 is an Even Number.

Input: 7  
Output: 7 is an Odd Number.

=================================================
RESULT:
- Successfully implemented a PHP program that
  checks whether a number is even or odd.
=================================================
*/
?>
</body>
</html>
