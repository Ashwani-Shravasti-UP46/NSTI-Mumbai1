<html>
<head>
    <title>Electricity Bill</title>
</head>
<body>

<h3>Electricity Bill</h3>

<form method="post">

Enter the Customer Name :<br>
<input type="text" name="name" required><br>

Enter the Customer ID :<br>
<input type="number" name="CustId" required><br>

Enter the Unit Consumed :<br>
<input type="number" name="unit" required><br><br>

<input type="submit" name="submit" value="Calculate"><br>

</form>

<?php
if(isset($_POST['submit'])){

    $name  = $_POST['name'];
    $cusId = $_POST['CustId'];
    $unit  = $_POST['unit'];

    // Bill Calculation
    if($unit <= 100){
        $bill = $unit * 5;
    }
    elseif($unit <= 200){
        $bill = (100 * 5) + (($unit - 100) * 7);
    }
    else{
        $bill = (100 * 5) + (100 * 7) + (($unit - 200) * 10);
    }

    echo "<br><b>Customer ID : </b>".$cusId."<br>";
    echo "<b>Customer Name : </b>".$name."<br>";
    echo "<b>Unit Consumed : </b>".$unit." Units<br>";
    echo "<b>Total Bill Amount : </b>₹".number_format($bill,2)."<br>";

    // Surcharge 10% if bill > 1000
    if($bill > 1000){
        $surcharge = $bill * 0.10;
        $netpay = $bill + $surcharge;

        echo "<b>Surcharge Applied (10%) : </b>₹".number_format($surcharge,2)."<br>";
        echo "<b>Net Payable Amount : </b>₹".number_format($netpay,2)."<br>";
    }
    else{
        echo "<b>Net Payable Amount : </b>₹".number_format($bill,2)."<br>";
    }
}
?>

</body>
</html>