<html>
<head>
    <title>Electricity Bill Calculator</title>
</head>
<body>

    <h2>Electricity Bill Calculator</h2>
    <form method="post">
        Enter Units Consumed: 
        <input type="number" name="units" required>
        <input type="submit" name="submit" value="Calculate Bill">
    </form>

    <?php
    if (isset($_POST['submit'])) {
        $units = $_POST['units'];
        $bill = 0;

        if ($units <= 50) {
            $bill = $units * 3.50;
        } elseif ($units > 50 && $units <= 150) {
            $temp = 50 * 3.50;
            $remaining_units = $units - 50;
            $bill = $temp + ($remaining_units * 4.00);
        } elseif ($units > 150 && $units <= 250) {
            $temp = (50 * 3.50) + (100 * 4.00);
            $remaining_units = $units - 150;
            $bill = $temp + ($remaining_units * 5.20);
        } else {
            $temp = (50 * 3.50) + (100 * 4.00) + (100 * 5.20);
            $remaining_units = $units - 250;
            $bill = $temp + ($remaining_units * 6.50);
        }

        echo "<hr>";
        echo "<h4>Bill Summary</h4>";
        echo "Total Units: <strong>$units</strong><br>";
        echo "Total Amount: <strong>₹" . number_format($bill, 2) . "</strong>";
    }
    ?>

</body>
</html>