<? php
$host = "localhost";
$user = "root";
$pass = "";
$db = "iti_jobs";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection Failed: " . $conn->connect_error);
}

// Secure input
$name = htmlspecialchars($_POST['name']);
$email = htmlspecialchars($_POST['email']);
$mobile = htmlspecialchars($_POST['mobile']);
$qualification = htmlspecialchars($_POST['qualification']);
$job = htmlspecialchars($_POST['job']);
$address = htmlspecialchars($_POST['address']);

// File Upload Security
$allowed = ['pdf','doc','docx'];
$fileName = $_FILES['resume']['name'];
$tmp = $_FILES['resume']['tmp_name'];
$ext = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

if (!in_array($ext, $allowed)) {
    die("Only PDF/DOC/DOCX allowed");
}

// Unique file name
$newFile = time() . "_" . $fileName;
move_uploaded_file($tmp, "uploads/" . $newFile);

// Insert using prepared statement
$stmt = $conn->prepare("INSERT INTO applicants (name,email,mobile,qualification,job,address,resume) VALUES (?,?,?,?,?,?,?)");

$stmt->bind_param("sssssss", $name,$email,$mobile,$qualification,$job,$address,$newFile);

if ($stmt->execute()) {
    echo "<h2>Application Submitted Successfully ✅</h2>";
} else {
    echo "Error!";
}

?>