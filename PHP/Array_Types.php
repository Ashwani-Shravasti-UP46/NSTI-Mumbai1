<html>
<head>
    <title>
         Array
    </title>
</head>
<body>
    <h2>Types of Arrays </h2>
</body>

<?php

// Array
$student=array("Name"=>"Rahul", "Age"=>20, "Gender"=>"Male");
echo "Gender : ".$student["Gender"]."<br>";

// Object
class Car {
    public $color = "Red";
}
$mycar = new Car();
echo "My Car Color is : ".$mycar->color;
echo "<br>";


// Null Data Type
$x=Null;
var_dump($x);
echo "<br>";

// Resource
$file = fopen("File.txt", "r");

if($file) {
    echo "File opened successfully.<br>";
    
    echo fread($file, filesize("File.txt"));
    
    fclose($file);
} else {
    echo "Unable to open file.";
}


?>
</html>