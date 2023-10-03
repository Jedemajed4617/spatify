<?php
include('../src/var_dump.php');
include('functions.php');
session_start();

function checkPostParameters($params) {
    foreach ($params as $param) {
        if (!isset($_POST[$param])) {
            echo "No $param was set.";
            die();
        }
    }
}

$requiredParams = ['album', 'genre', 'dur', 'artist', 'name'];

checkPostParameters($requiredParams);

$album = $_POST['album'];
$genre = $_POST['genre'];
$duration = $_POST['dur'];
$artist = $_POST['artist'];
$song = $_POST['name'];

$imageName = imageNameGen();
$imageFileType = strtolower(pathinfo($_FILES["fileToUpload"]["name"], PATHINFO_EXTENSION));
$target_dir = "productimg/";
$target_file = $target_dir . $imageName . ".webp"; // Set the target file to WebP format
$uploadOk = 1;

if (isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if ($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}

// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}

// Check file size
if ($_FILES["fileToUpload"]["size"] > 15000000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Allow certain file formats
if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg") {
    echo "Sorry, only JPG, JPEG & PNG files are allowed.";
    $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        // File has been uploaded successfully and is already in WebP format
        $image = $imageName . ".webp"; // Set the image name with the .webp extension
        CreateDBItemMusic($image, $album, $genre, $duration, $artist, $song, $mysqli);
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}

function CreateDBItemMusic($image, $album, $genre, $duration, $artist, $song, $mysqli){
    $sql = "INSERT INTO music (image, album, genre, duration, artist, song) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("ssssss", $image, $album, $genre, $duration, $artist, $song); 
    $stmt->execute();
    header("Location: cms.php");
    die();
}  