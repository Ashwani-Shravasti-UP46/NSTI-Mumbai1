<?php
/*
=====================================================
PRACTICAL: Simple PHP Login (Single File, mysqli)
=====================================================

AIM:
- Create a very simple login form and authenticate user
  from MySQL database (no PDO, no CSRF, no CSS).

OBJECTIVE:
- Show a login form (username, password).
- On submit, check credentials from DB table `users`.
- If valid → set session and show welcome on same page.
- If invalid → show error message.

TOOLS:
- PHP 7+/8+, MySQL/MariaDB, Any web server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Connect PHP to MySQL via mysqli.
2) Ensure table `users(username, password)` exists (plain text for demo).
3) If POST:
   a) Read username & password
   b) Query: SELECT * FROM users WHERE username=? AND password=?
   c) If row found → login success (set session)
   d) Else → error
4) If logged in → show welcome + logout button
5) Else → show login form

SAMPLE SQL (run once):
  CREATE DATABASE IF NOT EXISTS login_demo;
  USE login_demo;
  CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL
  );
  INSERT INTO users (username, password) VALUES ('admin','12345');

NOTE:
- This is intentionally SIMPLE for practice.
- For real apps: store hashed passwords and use password_hash/password_verify.
=====================================================
*/
?>

<?php
session_start();

/* ---- DB CONFIG ---- */
$DB_HOST = "localhost";
$DB_USER = "root";      // change if needed
$DB_PASS = "";          // change if needed
$DB_NAME = "login_demo";

/* ---- CONNECT ---- */
$conn = @mysqli_connect($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
if (!$conn) {
  die("DB connection failed: " . htmlspecialchars(mysqli_connect_error()));
}

/* ---- HANDLE LOGOUT ---- */
if (isset($_GET['logout'])) {
  session_unset();
  session_destroy();
  header("Location: ".$_SERVER['PHP_SELF']);
  exit;
}

/* ---- HANDLE LOGIN ---- */
$msg = "";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $u = trim($_POST['username'] ?? '');
  $p = trim($_POST['password'] ?? '');

  if ($u === '' || $p === '') {
    $msg = "Username and Password are required.";
  } else {
    // simple prepared statement (still very basic)
    $stmt = mysqli_prepare($conn, "SELECT id FROM users WHERE username=? AND password=?");
    if ($stmt) {
      mysqli_stmt_bind_param($stmt, "ss", $u, $p);
      mysqli_stmt_execute($stmt);
      mysqli_stmt_store_result($stmt);

      if (mysqli_stmt_num_rows($stmt) === 1) {
        $_SESSION['login_user'] = $u;
      } else {
        $msg = "Invalid username or password!";
      }
      mysqli_stmt_close($stmt);
    } else {
      $msg = "Query prepare failed.";
    }
  }
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Simple Login</title>
</head>
<body>

<?php if (isset($_SESSION['login_user'])): ?>
  <h2>Welcome, <?php echo htmlspecialchars($_SESSION['login_user']); ?>!</h2>
  <p>You are logged in.</p>
  <form method="get" action="">
    <button type="submit" name="logout" value="1">Logout</button>
  </form>
<?php else: ?>
  <h2>Login</h2>

  <?php if ($msg !== ""): ?>
    <p><?php echo htmlspecialchars($msg); ?></p>
  <?php endif; ?>

  <form method="post" action="">
    <label>Username:</label><br>
    <input type="text" name="username" required><br><br>

    <label>Password:</label><br>
    <input type="password" name="password" required><br><br>

    <button type="submit">Login</button>
  </form>

  <p><small>Demo user (as per sample SQL): <strong>admin / 12345</strong></small></p>
<?php endif; ?>

</body>
</html>
<?php