<html>
    <head>
        <title> Test a Dropdown (select) Event</title>
</head>
<body>
    <form method ="POST">
      Select Trade:
      <select name ="trade">
      <option>CSA</option>
      <option>Em</option>
      <option>IT</option>
      </select>
       <input type ="Submit" name = "Submit">
</form>
<?php
if(isset($_POST['Submit'])){
    echo"Selected Trade :".$_POST[Trade];
}
?>
</body>
</html>