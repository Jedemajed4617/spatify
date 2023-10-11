<?php
$servername = "db"; // Use the service name defined in Docker Compose
$username = "db_user";
$password = "mijn_p@ss#";
$dbname = "voorbeeld_db";

// Create connection in mysqli
$mysqli = new mysqli($servername, $username, $password, $dbname);

// Check connection in mysqli
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}