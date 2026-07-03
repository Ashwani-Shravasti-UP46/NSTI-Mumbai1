<html>
<head>
    <title>
    Nested If Statement
    </title>
</head>
<body>
<h4> Nested If...If Statement</h4>

<?php
$age = 20;
$gender = "Male";

if($age >= 18){
    
    if($gender == "Male"){
        echo "Adult Male";
    }
    elseif($gender == "Female"){
        echo "Adult Female";
    }
    else{
        echo "Gender not specified";
    }

}
else{
    echo "Not an Adult";
}
?>

</body>
</html>