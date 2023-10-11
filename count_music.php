<?php
include('../src/db_conn.php'); // Include the database connection file

// Query to count the number of music cards in the 'music' table
$query = "SELECT COUNT(*) as count FROM music";
$result = $mysqli->query($query);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $count = $row['count'];
    echo "Total number of music cards: $count";
} else {
    echo "No music cards found.";
}

$mysqli->close();