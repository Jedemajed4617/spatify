<?php
include('var_dump.php');

$artistSortOrder = $_GET['artist'];
$selectedGenre = $_GET['genre'];
$selectedDuration = $_GET['duration'];

// Construct your SQL query based on the filter options
$sql = "SELECT * FROM music WHERE 1=1"; // Initial SQL query

if ($selectedGenre !== '') {
    $sql .= " AND genre = '$selectedGenre'";
}

if ($selectedDuration !== '') {
    if ($selectedDuration === 'short') {
        $sql .= " AND duration < 180"; // Assuming "short" means less than 3 minutes (180 seconds)
    } elseif ($selectedDuration === 'medium') {
        $sql .= " AND duration >= 180 AND duration <= 300"; // Assuming "medium" means 3-5 minutes (180-300 seconds)
    } elseif ($selectedDuration === 'long') {
        $sql .= " AND duration > 300"; // Assuming "long" means more than 5 minutes (300 seconds)
    }
}

if ($artistSortOrder === 'asc') {
    $sql .= " ORDER BY artist ASC";
} elseif ($artistSortOrder === 'desc') {
    $sql .= " ORDER BY artist DESC";
}

$result = $mysqli->query($sql);

// Generate HTML for music cards
$output = '';
while ($row = $result->fetch_assoc()) {
    $output .= '<div class="music-card">';
    // ... Generate card content here as in your existing code
    $output .= '</div>';
}

echo $output;

$mysqli->close();