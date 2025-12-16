<?php
// PHP section to process registration form submission
$success = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'] ?? '';
    $fname = $_POST['fname'] ?? '';
    $mname = $_POST['mname'] ?? '';
    $dob = $_POST['dob'] ?? '';
    $age = $_POST['age'] ?? '';
    $gender = $_POST['gender'] ?? '';
    $religion = $_POST['religion'] ?? '';
    $state = $_POST['state'] ?? '';
    $district = $_POST['district'] ?? '';
    $country = $_POST['country'] ?? '';
    $email = $_POST['email'] ?? '';
    $phone = $_POST['phone'] ?? '';
    $address = $_POST['address'] ?? '';

    // Simple validation
    if ($name && $fname && $mname && $dob && $phone) {
        $success = "Form Successfully Submitted ✅";
        // Yaha aap database insert code bhi laga sakte ho
    } else {
        $success = "Please fill all required fields!";
    }
}
?>