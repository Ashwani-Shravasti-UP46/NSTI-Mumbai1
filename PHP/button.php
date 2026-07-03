<!DOCTYPE html>
<html>
<body>
    <form method='post'>
        <input type="submit" name="button" value="Click Me">
    </form>
    <?php
    if(isset($_POST['button'])){
        echo "Button Click Event Tested !";
    }
    ?>
</body>
</html>
