<?php
/*
=====================================================
PRACTICAL: PHP Program to Generate Fibonacci Series
=====================================================

AIM:
- To write a PHP program that prints the Fibonacci
  series up to a given number of terms.

OBJECTIVE:
- To read number of terms from user.
- To generate Fibonacci sequence using loop.
- To display the series.

TOOLS:
- PHP 7+/8+
- Any Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Accept number of terms (n) from user.
2) Initialize first = 0, second = 1.
3) Print first two numbers.
4) Run loop from 3 to n:
   next = first + second
   print next
   update first = second, second = next
5) End.

STEPS TO RUN:
- Save file as: fibonacci.php
- Open in browser: http://localhost/fibonacci.php
- Enter number of terms and check.

=====================================================
PHP CODE (fibonacci.php)
=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Fibonacci Series</title>
</head>
<body>
  <h1>Fibonacci Series (PHP)</h1>

  <form method="post">
    <label>Enter number of terms:</label><br>
    <input type="number" name="terms" min="1" required>
    <button type="submit">Generate</button>
  </form>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $n = (int)$_POST["terms"];
    $first = 0;
    $second = 1;

    echo "<p>Fibonacci Series up to $n terms:<br>";

    if ($n >= 1) echo $first . " ";
    if ($n >= 2) echo $second . " ";

    for ($i = 3; $i <= $n; $i++) {
        $next = $first + $second;
        echo $next . " ";
        $first = $second;
        $second = $next;
    }

    echo "</p>";
}
?>

<?php
/*
================= SAMPLE OUTPUT =================

Input: 7  
Output: 0 1 1 2 3 5 8  

Input: 10  
Output: 0 1 1 2 3 5 8 13 21 34  

=================================================
RESULT:
- Successfully implemented a PHP program that
  generates Fibonacci series up to given terms.
=================================================
*/
?>
</body>
</html>
