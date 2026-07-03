<?php
/*
=====================================================
PRACTICAL: PHP CRUD (Insert, Select, Update, Delete)
=====================================================

AIM:
- To write a PHP program that performs basic CRUD 
  (Create, Read, Update, Delete) operations on 
  a MySQL database table `students`.

OBJECTIVE:
- To insert new student record.
- To fetch and display all student records.
- To update an existing student record.
- To delete a student record by ID.

TOOLS:
- PHP 7+/8+
- MySQL / MariaDB
- Web Server (XAMPP/WAMP/LAMP)

ALGORITHM:
1) Create a database `school` and table `students`.
2) Connect PHP to MySQL using mysqli.
3) If "Insert" form is submitted → add new record.
4) If "Update" form is submitted → update record by ID.
5) If "Delete" form is submitted → delete record by ID.
6) Fetch all rows using SELECT * FROM students.
7) Display records in HTML table.
8) End program.

STEPS TO RUN:
1) Create Database & Table:
   CREATE DATABASE IF NOT EXISTS school;
   USE school;
   CREATE TABLE IF NOT EXISTS students (
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     roll_no VARCHAR(20) NOT NULL,
     class VARCHAR(20) NOT NULL,
     marks INT NOT NULL
   );

2) Save this file as crud_students.php
3) Start Apache + MySQL in XAMPP.
4) Run http://localhost/crud_students.php
5) Use forms to Insert, Update, Delete and view records.

=====================================================
PHP CODE (crud_students.php)
=====================================================
*/

$h="localhost"; $u="root"; $p=""; $db="school";
$conn = mysqli_connect($h,$u,$p,$db) or die("DB connection failed");

$msg = "";

/* INSERT */
if (isset($_POST['add'])) {
  $name=$_POST['name']; $roll=$_POST['roll_no']; $class=$_POST['class']; $marks=(int)$_POST['marks'];
  mysqli_query($conn,"INSERT INTO students(name,roll_no,class,marks) VALUES('$name','$roll','$class',$marks)");
  $msg = "Inserted!";
}

/* UPDATE */
if (isset($_POST['upd'])) {
  $id=(int)$_POST['id']; $name=$_POST['name']; $roll=$_POST['roll_no']; $class=$_POST['class']; $marks=(int)$_POST['marks'];
  mysqli_query($conn,"UPDATE students SET name='$name', roll_no='$roll', class='$class', marks=$marks WHERE id=$id");
  $msg = "Updated!";
}

/* DELETE */
if (isset($_POST['del'])) {
  $id=(int)$_POST['id'];
  mysqli_query($conn,"DELETE FROM students WHERE id=$id");
  $msg = "Deleted!";
}

/* SELECT */
$rows = mysqli_query($conn,"SELECT * FROM students ORDER BY id DESC");
?>

<!DOCTYPE html>
<html>
<head><meta charset="utf-8"><title>Simple CRUD (students)</title></head>
<body>
<h1>Simple CRUD (students)</h1>
<p style="color:blue;"><?php echo htmlspecialchars($msg); ?></p>

<!-- INSERT -->
<h3>Insert</h3>
<form method="post">
  Name: <input name="name" required>
  Roll: <input name="roll_no" required>
  Class: <input name="class" required>
  Marks: <input type="number" name="marks" required>
  <button name="add">Add</button>
</form>

<!-- UPDATE -->
<h3>Update (by ID)</h3>
<form method="post">
  ID: <input type="number" name="id" required>
  Name: <input name="name" required>
  Roll: <input name="roll_no" required>
  Class: <input name="class" required>
  Marks: <input type="number" name="marks" required>
  <button name="upd">Update</button>
</form>

<!-- DELETE -->
<h3>Delete (by ID)</h3>
<form method="post">
  ID: <input type="number" name="id" required>
  <button name="del" onclick="return confirm('Delete?')">Delete</button>
</form>

<hr>

<!-- SELECT -->
<h3>All Students</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <tr><th>ID</th><th>Name</th><th>Roll</th><th>Class</th><th>Marks</th></tr>
  <?php while($r=mysqli_fetch_assoc($rows)): ?>
    <tr>
      <td><?php echo $r['id']; ?></td>
      <td><?php echo htmlspecialchars($r['name']); ?></td>
      <td><?php echo htmlspecialchars($r['roll_no']); ?></td>
      <td><?php echo htmlspecialchars($r['class']); ?></td>
      <td><?php echo (int)$r['marks']; ?></td>
    </tr>
  <?php endwhile; ?>
</table>
</body>
</html>

<?php
mysqli_close($conn);

/*
================= SAMPLE OUTPUT =================

Insert Form:
Name: Amit | Roll: 101 | Class: 10th | Marks: 450 → [Add] → "Inserted!"

Update Form:
ID: 1 | Name: Amit Kumar | Roll: 101 | Class: 10th | Marks: 460 → [Update] → "Updated!"

Delete Form:
ID: 1 → [Delete] → "Deleted!"

Table:
ID | Name       | Roll | Class | Marks
--------------------------------------
2  | Priya      | 102  | 10th  | 480
3  | Rahul      | 103  | 10th  | 395

=================================================
RESULT:
- Successfully implemented PHP CRUD operations
  (Insert, Select, Update, Delete) on MySQL database.
=================================================
*/
?>
