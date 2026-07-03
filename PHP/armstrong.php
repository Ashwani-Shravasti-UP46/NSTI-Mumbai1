<?php
/*
=====================================================
PRACTICAL: PHP Program to Check Armstrong Number
=====================================================

AIM:
- To write a PHP program that checks whether
  a given number is an Armstrong number or not.

OBJECTIVE:
- To read a number from user.
- To calculate sum of cubes of its digits.
- If sum equals original number → Armstrong.
- Else → Not Armstrong.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept a number from user.
2) Store original number in temp variable.
3) Initialize sum = 0.
4) While number > 0:
   - digit = number % 10
   - sum = sum + (digit^3)
   - number = number / 10
5) If sum == original → Armstrong.
6) Else → Not Armstrong.

STEPS TO RUN:
- Save file as: armstrong.php
- Open in browser: http://localhost/armstrong.php
- Enter number and check.

=====================================================
PHP CODE (armstrong.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Armstrong Number Check</title>
</head>
<body>
  <h1>Armstrong Number Check (PHP)</h1>

  <form method="post">
    <label>Enter a number:</label><br>
    <input type="number" name="num" min="0" required>
    <button type="submit">Check</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $num = (int)$_POST["num"];
    $original = $num;
    $sum = 0;

    while ($num > 0) {
        $digit = $num % 10;
        $sum += $digit * $digit * $digit; // cube of digit
        $num = (int)($num / 10);
    }

    if ($sum == $original) {
        echo "<p>$original is an Armstrong Number.</p>";
    } else {
        echo "<p>$original is NOT an Armstrong Number.</p>";
    }
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: 153  
Output: 153 is an Armstrong Number.  
(1³ + 5³ + 3³ = 1 + 125 + 27 = 153)

Input: 123  
Output: 123 is NOT an Armstrong Number.

=================================================
RESULT:
- Successfully implemented a PHP program that
  checks Armstrong number.
=================================================
*/
?>
</body>
</html>
