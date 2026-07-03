<html>
<head>
    <title>Simple Arithmetic Operation</title>
</head>
<body>

<form method="POST">
    Enter First Number:
    <input type="number" name="num1" required><br><br>

    Enter Second Number:
    <input type="number" name="num2" required><br><br>

    <input type="submit" name="Submit" value="Calculate">
</form>

<?php
if (isset($_POST['Submit'])) {

    $a = $_POST['num1'];
    $b = $_POST['num2'];

    echo "<h4>Results</h4>";
    echo "Addition: " . ($a + $b) . "<br>";
    echo "Subtraction: " . ($a - $b) . "<br>";
    echo "Multiplication: " . ($a * $b) . "<br>";

    if ($b != 0) {
        echo "Division: " . ($a / $b) . "<br>";
        echo "Modulus (Remainder): " . ($a % $b);
    } else {
        echo "Division and Modulus Not Possible (Divide By Zero)";
    }
}
?>

</body>
</html>
