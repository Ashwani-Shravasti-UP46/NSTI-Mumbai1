<?php
/*
=====================================================
PRACTICAL: PHP Program to Check Leap Year
=====================================================

AIM:
- To write a PHP program that checks whether
  a given year is a leap year or not.

OBJECTIVE:
- To read a year from user.
- To apply leap year conditions:
  (i) Year divisible by 400 → Leap Year
  (ii) Else if divisible by 100 → Not Leap Year
  (iii) Else if divisible by 4 → Leap Year
  (iv) Else → Not Leap Year
- To display the result.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept a year from user.
2) If year % 400 == 0 → Leap Year.
3) Else if year % 100 == 0 → Not Leap Year.
4) Else if year % 4 == 0 → Leap Year.
5) Else → Not Leap Year.
6) Display result.

STEPS TO RUN:
- Save file as: leapyear.php
- Open in browser: http://localhost/leapyear.php
- Enter year and check.

=====================================================
PHP CODE (leapyear.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Leap Year Check</title>
</head>
<body>
  <h1>Leap Year Check (PHP)</h1>

  <form method="post">
    <label>Enter a year:</label><br>
    <input type="number" name="year" required>
    <button type="submit">Check</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $year = (int)$_POST["year"];

    if ($year % 400 == 0) {
        echo "<p>$year is a Leap Year.</p>";
    } elseif ($year % 100 == 0) {
        echo "<p>$year is NOT a Leap Year.</p>";
    } elseif ($year % 4 == 0) {
        echo "<p>$year is a Leap Year.</p>";
    } else {
        echo "<p>$year is NOT a Leap Year.</p>";
    }
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: 2024  
Output: 2024 is a Leap Year.  

Input: 1900  
Output: 1900 is NOT a Leap Year.  

Input: 2000  
Output: 2000 is a Leap Year.  

=================================================
RESULT:
- Successfully implemented a PHP program that
  checks whether a given year is a leap year or not.
=================================================
*/
?>
</body>
</html>
