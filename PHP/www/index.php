<?php
echo "Welcome To PHP APP";
?>
<br />
<?php
$servername = "mysql";  // The name of the MySQL service in Docker Compose
$username = "root"; // MySQL user from Docker Compose
$password = "rootpassword"; // MySQL password from Docker Compose
$dbname = "app_db"; // MySQL database name from Docker Compose


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully to the database";


// Query the database
$sql = "SELECT DATABASE()";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<br>Current database: " . $row["DATABASE()"];
    }
} else {
    echo "<br>No database selected.";
}


$conn->close();
?>
