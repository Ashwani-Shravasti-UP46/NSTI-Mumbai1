<?php
/*
=====================================================
PRACTICAL: PHP Form (Store & Show Candidate Name)
=====================================================

AIM:
- To create a PHP form that accepts candidate details
  and stores them into a MySQL database.
- After storing, show the stored candidate name back
  inside the form.

OBJECTIVE:
- To design a simple HTML form in PHP.
- To connect with MySQL using mysqli.
- To insert data into database.
- To fetch last inserted candidate name and display it.

TOOLS:
- PHP 7+/8+
- MySQL/MariaDB
- XAMPP/WAMP/LAMP Server

ALGORITHM:
1) Connect PHP to MySQL database.
2) Create `candidates` table if not exists.
3) On form submit (POST):
   a) Read Name, Email, Phone.
   b) Insert record into `candidates` table.
   c) Fetch last inserted candidate’s name.
4) Show form again with Name field prefilled.
5) End.

STEPS TO RUN:
- Save this file as: index.php
- Open in browser: http://localhost/index.php
- Fill and submit form.

=====================================================
SQL (optional)
=====================================================

CREATE DATABASE IF NOT EXISTS candidate_app;
USE candidate_app;

CREATE TABLE IF NOT EXISTS candidates (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name  VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  phone VARCHAR(20)  NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

=====================================================
PHP CODE (index.php)
=====================================================
*/
?>

<?php
// ---------- CONFIG ----------
$DB_HOST = "localhost";
$DB_NAME = "candidate_app"; // create this DB first in MySQL
$DB_USER = "root";          // change as needed
$DB_PASS = "";              // change as needed

// ---------- CONNECT ----------
$mysqli = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// ---------- CREATE TABLE ----------
$mysqli->query("CREATE TABLE IF NOT EXISTS candidates (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name  VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  phone VARCHAR(20)  NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)");

$storedName = "";
$msg = "";

// ---------- HANDLE POST ----------
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name  = trim($_POST["name"] ?? "");
    $email = trim($_POST["email"] ?? "");
    $phone = trim($_POST["phone"] ?? "");

    if ($name && $email && $phone) {
        $stmt = $mysqli->prepare("INSERT INTO candidates (name, email, phone) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $name, $email, $phone);
        if ($stmt->execute()) {
            $lastId = $stmt->insert_id;
            $res = $mysqli->query("SELECT name FROM candidates WHERE id=$lastId");
            if ($row = $res->fetch_assoc()) {
                $storedName = $row["name"];
                $msg = "Saved successfully!";
            }
        }
        $stmt->close();
    } else {
        $msg = "All fields required!";
    }
}

// ---------- PREFILL ----------
$oldName  = $storedName !== "" ? $storedName : ($_POST["name"] ?? "");
$oldEmail = $_POST["email"] ?? "";
$oldPhone = $_POST["phone"] ?? "";
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Candidate Form</title>
</head>
<body>
  <h1>Candidate Form</h1>

  <?php if ($msg) echo "<p>$msg</p>"; ?>

  <form method="post">
    <label>Name:</label><br>
    <input type="text" name="name" value="<?php echo htmlspecialchars($oldName); ?>"><br><br>

    <label>Email:</label><br>
    <input type="email" name="email" value="<?php echo htmlspecialchars($oldEmail); ?>"><br><br>

    <label>Phone:</label><br>
    <input type="text" name="phone" value="<?php echo htmlspecialchars($oldPhone); ?>"><br><br>

    <button type="submit">Save</button>
  </form>
</body>
</html>

<?php
/*
================= SAMPLE OUTPUT =================

Case 1: First time load → Empty form
Case 2: Submit with values →
        - "Saved successfully!" message
        - Name field prefilled with stored candidate name

=================================================
RESULT:
- Successfully created a PHP form that saves data
  into MySQL and shows stored candidate name again.
=================================================
*/

