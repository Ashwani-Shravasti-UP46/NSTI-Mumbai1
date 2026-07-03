<!DOCTYPE html>
<html lang="en">
<body>
    <form method="post">
        <input type="checkbox" name="course" value="PHP"> PHP <br>
        <input type="checkbox" name="course" value="Java"> JAVA  <br>
        <input type="checkbox" name="course" value="networking"> NETWORKING  <br>
        <input type="submit" name="submit">
    </form>
    <?php
    if(isset($_POST['submit'])){
        if(isset($_POST['course']))
            echo "checkbox Selected";
     else
        echo "checkbox not selected ";
       }
    ?>
</body>
</html>