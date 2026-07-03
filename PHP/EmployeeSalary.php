<html>
<head>
    <title>Salary Slip</title>
</head>
<body>

<h3>Employee Salary Slip</h3>

<form method="post">

Enter Employee Name :
<input type="text" name="name" required><br><br>

Enter Employee ID :
<input type="text" name="ID" required><br><br>

Enter Designation :
<input type="text" name="Desg" required><br><br>

Enter Basic Pay :
<input type="number" name="bp" required><br><br>

Enter Deduction :
<input type="number" name="ded" required><br><br>

<input type="submit" name="submit" value="Salary Slip"><br>

</form>

<?php 
if(isset($_POST['submit'])){

    $name = $_POST['name'];
    $Id = $_POST['ID'];
    $Dsg = $_POST['Desg'];
    $bp = $_POST['bp'];
    $ded = $_POST['ded'];

    $hra = ($bp * 0.30);
    $ta  = ($bp * 0.15);
    $da  = ($bp * 0.50);

    $totalsalary = ($bp + $hra + $ta + $da);
    $netsalary   = ($totalsalary - $ded);

    echo "<h3>Salary Details</h3>";
    echo "<table border='1' cellpadding='6' cellspacing='0'>";
    echo "<tr><th>Employee Name</th><td>$name</td></tr>";
    echo "<tr><th>Employee ID</th><td>$Id</td></tr>";
    echo "<tr><th>Designation</th><td>$Dsg</td></tr>";
    echo "<tr><th>Basic Pay</th><td>$bp</td></tr>";
    echo "<tr><th>HRA (30%)</th><td>$hra</td></tr>";
    echo "<tr><th>TA (15%)</th><td>$ta</td></tr>";
    echo "<tr><th>DA (50%)</th><td>$da</td></tr>";
    echo "<tr><th>Total Salary</th><td>$totalsalary</td></tr>";
    echo "<tr><th>Deduction</th><td>$ded</td></tr>";
    echo "<tr><th>Net Salary</th><td>$netsalary</td></tr>";
    echo "</table>";
}
?>

</body>
</html>