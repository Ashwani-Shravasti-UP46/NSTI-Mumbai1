<html>
<head>
    <title>
    If...Elseif...Else
    </title>
</head>
<body>
<h4> If...Else if...Else</h4>
<?php
$marks=75;
if($marks>=90){
    echo "Grade=A+";
}
elseif($marks>=75){
echo "Grade A";
}
elseif($marks>=50){
echo "Grade B";
}
else{
    echo "Fail";
    }

?>
</body>
</html>