<!DOCTYPE html>
<html>
<head>
    <title>Area of Triangle</title>
</head>
<body>

<h2>Area of Triangle using Heron's Formula</h2>

<form method="post">
    Enter Side A: <input type="number" name="a" step="any" required><br><br>
    Enter Side B: <input type="number" name="b" step="any" required><br><br>
    Enter Side C: <input type="number" name="c" step="any" required><br><br>
    <input type="submit" name="submit" value="Calculate Area">
</form>

<?php
if(isset($_POST['submit']))
{
    $a = $_POST['a'];
    $b = $_POST['b'];
    $c = $_POST['c'];

    // Check triangle validity
    if(($a + $b > $c) && ($a + $c > $b) && ($b + $c > $a))
    {
        $s = ($a + $b + $c) / 2;
        $area = sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));

        echo "<h3>Area of Triangle = " . round($area, 2) . "</h3>";
    }
    else
    {
        echo "<h3>Invalid Triangle!</h3>";
    }
}
?>

</body>
</html>