<?php
/*
=====================================================
PRACTICAL: Form Handling in PHP
=====================================================

AIM:
- To demonstrate how to handle form data using PHP.

OBJECTIVE:
- Create a form (Name, Email).
- Use $_POST to collect submitted values.
- Display entered data back to the user.

TOOLS:
- PHP 7+/8+
- Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Create an HTML form with method="post".
2) On form submit, check if $_POST contains data.
3) Fetch input values using $_POST['fieldname'].
4) Display them using echo.
5) End.

=====================================================
*/
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Form Handling in PHP</title>
</head>
<body>
  <h1>Form Handling Example</h1>

  <!-- HTML FORM -->
  <form method="post" action="">
    <label>Enter Name:</label><br>
    <input type="text" name="name" required><br><br>

    <label>Enter Email:</label><br>
    <input type="email" name="email" required><br><br>

    <button type="submit">Submit</button>
  </form>

  <hr>

<?php
// PHP Form Handling Code
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name  = $_POST['name'];
    $email = $_POST['email'];

    echo "<h2>Form Data Received:</h2>";
    echo "Name: " . htmlspecialchars($name) . "<br>";
    echo "Email: " . htmlspecialchars($email) . "<br>";
}
?>

</body>
</html>

<?php
/*
================= SAMPLE OUTPUT =================
Form:

Enter Name: Sunil  
Enter Email: sunil@test.com  
[Submit]

After Submit:

Form Data Received:
Name: Sunil
Email: sunil@test.com

=================================================
RESULT:
- Successfully demonstrated form handling in PHP
  using POST method.
=================================================
*/
?>
