<!DOCTYPE html>
<html>
<head>
    <title>BMI Calculator</title>
</head>
<body>

<h2>BMI Calculator</h2>

<form method="post">
    Enter Weight (kg): 
    <input type="text" name="weight" required><br><br>

    Enter Height (meters): 
    <input type="text" name="height" required><br><br>

    <input type="submit" name="submit" value="Calculate BMI">
</form>

<?php
if(isset($_POST['submit'])){
    
    $weight = $_POST['weight'];
    $height = $_POST['height'];

    if(is_numeric($weight) && is_numeric($height) && $height > 0){
        
        $bmi = $weight / ($height * $height);
        $bmi = round($bmi, 2);

        echo "<h3>Your BMI is: $bmi</h3>";

        if($bmi < 18.5){
            echo "Category: Underweight";
        }
        elseif($bmi >= 18.5 && $bmi < 24.9){
            echo "Category: Normal Weight";
        }
        elseif($bmi >= 25 && $bmi < 29.9){
            echo "Category: Overweight";
        }
        else{
            echo "Category: Obese";
        }
    }
    else{
        echo "Please enter valid positive numbers.";
    }
}
?>

</body>
</html>