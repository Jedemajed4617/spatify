<?php
include('../src/db_conn.php');

// Initialize filter variables
$artistFilter = isset($_GET['artistFilter']) ? $_GET['artistFilter'] : '';
$genreFilter = isset($_GET['genreFilter']) ? $_GET['genreFilter'] : '';
$durationFilter = isset($_GET['durationFilter']) ? $_GET['durationFilter'] : '';
$searchQuery = isset($_GET['search']) ? $_GET['search'] : '';

// Check for connection errors
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Create the base SQL query
$sql = "SELECT * FROM music WHERE 1";

// Add filters to the SQL query as needed
if (!empty($artistFilter)) {
    if ($artistFilter === 'asc') {
        $sql .= " ORDER BY artist ASC";
    } elseif ($artistFilter === 'desc') {
        $sql .= " ORDER BY artist DESC";
    }
}

if (!empty($genreFilter)) {
    // Use prepared statement to bind parameters
    $sql .= " AND genre = ?";
}

if (!empty($durationFilter)) {
    // Create a placeholder for the duration filter
    $sql .= " AND duration = ?";
}

// Create a prepared statement
$stmt = $mysqli->prepare($sql);

// Bind parameters for the genre and duration filters
if (!empty($genreFilter)) {
    $stmt->bind_param("s", $genreFilter);
}

if (!empty($durationFilter)) {
    $stmt->bind_param("s", $durationFilter);
}

// Execute the prepared statement
$stmt->execute();

// Fetch all matching music data
$matchingMusic = [];
$result = $stmt->get_result();
while ($row = $result->fetch_assoc()) {
    $artistName = strtolower($row['artist']);
    $songName = strtolower($row['song']);
    $searchTerm = strtolower($searchQuery);

    if (empty($searchQuery) || strpos($artistName, $searchTerm) !== false || strpos($songName, $searchTerm) !== false) {
        $matchingMusic[] = $row;
    }
}

$stmt->close();
$mysqli->close();