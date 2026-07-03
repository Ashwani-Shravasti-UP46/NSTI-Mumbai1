<html>
<head>
    <title>
    Area of Circle
    </title>
</head>
<body>
<h4> Area of Circle </h4>   
<form method="post">
Radius
<input type="text" name="radius"> <br><br>
<input type="submit" value="Calculate">
</form>

<?php
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $r = $_POST['radius'];

    if(is_numeric($r) && $r > 0){
        $area = 3.14 * $r * $r;
        echo "Area is: " . $area;
    }
    else{
        echo "Please enter a valid positive number for radius.";
    }
}
?>

</body>
</html>