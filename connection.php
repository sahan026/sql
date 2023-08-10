<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "libarary"; // Corrected the typo in the database name

$name = $_GET["name"];
$pwd = $_GET["pwd"];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT user_name, password FROM member WHERE user_name='$name' AND password='$pwd'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Username and password match
    echo "<script type='text/javascript'>alert('Login successful!');
     window.location.href = 's1.html'; // Replace with the actual page URL</script>";
} else {
    // Use"Login failed. Please check your username and password.";rname and/or password do not match
    echo "<script type='text/javascript'>alert('Login failed. Please check your username and password');</script>";
    echo "ERROR";
}

$conn->close();
?>
