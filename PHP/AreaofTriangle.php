<!DOCTYPE html>
<html>
<head>
    <title>Area of Triangle (Three Sides)</title>
</head>
<body>

<h2>Area of Triangle using Heron's Formula</h2>

<?php
// तीनों भुजाएँ (Sides)
$a = 5;
$b = 6;
$c = 7;

// Semi-perimeter
$s = ($a + $b + $c) / 2;

// Area calculation
$area = sqrt($s * ($s - $a) * ($s - $b) * ($s - $c));

echo "Side A = $a <br>";
echo "Side B = $b <br>";
echo "Side C = $c <br>";
echo "Area of Triangle = " . $area;
?>

</body>
</html>