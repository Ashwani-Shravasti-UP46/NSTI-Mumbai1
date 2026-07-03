<!DOCTYPE html>
<html lang="en">
<body>
    <form method="post">
    Select Trade :
    <select name="trade">
        <option>Please Select </option>
        <option>CSA</option>
        <option>EM</option>
        <option>IT</option>
    </select>
    <input type="submit" name="submit">
    </form>
        <?php
        if(isset($_POST['submit'])){
            echo "Selected Trade : ".$_POST['trade'];
        }
        ?>
</body>
</html>