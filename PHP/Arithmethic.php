<html>
<head>
    <title>
    Arithmethic Operations
    </title>
</head>
<body>
    <h3> Arithmetic Operations </h3>
    <form method="post">
        Enter First Number :
        <input type="number" name="num1" required><br><br>
        Enter Second Number :
        <input type="number" name="num2" required><br><br>
        <input type="submit" name="submit" value="calculate">
    </form>
    </body>
<?php
if(isset($_POST['submit'])){
$a=$_POST['num1'];
$b=$_POST['num2'];
echo "<h4>Result</h4>";
echo "Addition : ".($a+$b)."<br>";
echo "Substraction : ".($a-$b)."<br>";
echo "Multiplication : ".($a*$b)."<br>";
if($b!=0){
echo "Division : ".($a/$b)."<br>";
echo "Modulus (Remainder) : ".($a%$b)."<br>";
}
else{
    echo "Division and Modulus not Possible (Divide by Zero).";
}
}
?>
</html>