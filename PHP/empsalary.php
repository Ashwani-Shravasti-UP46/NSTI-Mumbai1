<html>
<head>
    <title>Employee Salary Slip </title>
</head>
<body>

    <h2>Employee Salary Slip</h2>
    <form method="post">
        Employee Name: <input type="text" name="emp_name" required><br><br>
        Basic Salary: <input type="number" name="basic" required><br><br>
        <input type="submit" name="submit" value="Generate Slip">
    </form>

    <?php
    if (isset($_POST['submit'])) {
        $name = $_POST['emp_name'];
        $basic = $_POST['basic'];

       
        $hra = $basic * 0.40;  
        $ma = 500;             
        $gross_salary = $basic + $hra + $ma;


        $pf = $basic * 0.12;   
        $tax = $gross_salary * 0.05; 
        $total_deductions = $pf + $tax;

    
        $net_salary = $gross_salary - $total_deductions;

        echo "<hr>";
        echo "<h3>Salary Slip for $name</h3>";
        echo "<b>Earnings:</b><br>";
        echo "Basic Salary: ₹$basic <br>";
        echo "HRA (40%): ₹$hra <br>";
        echo "Medical: ₹$ma <br>";
        echo "<strong>Gross Total: ₹$gross_salary</strong><br><br>";

        echo "<b>Deductions:</b><br>";
        echo "PF (12%): ₹$pf <br>";
        echo "Tax (5%): ₹$tax <br>";
        echo "<strong>Total Deducted: ₹$total_deductions</strong><br><br>";

        echo "<h2>Net Take-Home Salary: ₹" . round($net_salary) . "</h2>";
    }
    ?>

</body>
</html>