<!DOCTYPE html>
<html>
    <head>
        <title>
            Day Checker
        </title>
    </head>
    <body>
        <h2> 
            Enter Day 
        </h2>
        
        <form method="post">
        Enter Day :
        <input type="text" name="day" required>
        <input type="submit" value="check Day">
        </form>
        
        <?php 
        if($_Server["Request_Method"]=="POST"){
        $day=$_POST['day'];
        switch($day){
        case "Monday" :
        break;
        case "Tuesday" :
            echo "Today is Tuesday";
            break;
            case "Wednesday" :
                echo "Today is Wednesday";
                break;
                default:
                echo "Invalid Day";
        }
        }
        ?>
    </body>
</html>