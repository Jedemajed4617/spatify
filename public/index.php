<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spatify - The music library for you!</title>
    <link rel="stylesheet" href="./index.css">
    <script src="./index.js" defer></script>
    <link rel="shortcut icon" href="./img/spotify-logo.webp" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" rel="stylesheet">
</head>

<body>
    <header class="header">
        <nav class="header__container">
            <div class="header__imgcontainer">
                <a class="header__imgLinkC" href="./index.php"><img class="header__img" src="./img/spotify-logo.webp"
                        alt=""></a>
                <h1 class="header__imgSubText">Spatify</h1>
            </div>
            <div class="header__searchcontainer">
                <form class="header__searchbarform" action="action_page.php">
                    <button class="header__searchsubmit" type="submit"><i class="fa fa-search"></i></button>
                    <input class="header__searchbar" type="text" placeholder="Search.." name="search">
                </form>
            </div>
        </nav>
    </header>

    <div class="filters">
        <div class="filter--container">
            <label for="artistFilter">Sort by Artist Name:</label>
            <select id="artistFilter">
                <option value="asc">A-Z</option>
                <option value="desc">Z-A</option>
            </select>
        </div>
        <div class="filter--container">
            <label for="genreFilter">Filter by Genre:</label>
            <select id="genreFilter">
                <option value="">All Genres</option>
                <option value="Pop">Pop</option>
                <option value="Rock">Rock</option>
                <option value="Hip Hop">Hip-Hop</option>
                <!-- Add more genre options here -->
            </select>
        </div>
        <div class="filter--container">
            <label for="durationFilter">Filter by Duration:</label>
            <select id="durationFilter">
                <option value="">All Durations</option>
                <option value="short">Short (less than 3 min)</option>
                <option value="medium">Medium (3-5 min)</option>
                <option value="long">Long (more than 5 min)</option>
            </select>
        </div>
    </div>

    <section class="library">
        <div class="music--cardContainer">
            <?php
            include('var_dump.php');

            // Fetch music data from the database
            $sql = "SELECT * FROM music";
            $result = $mysqli->query($sql);

            // Loop through the database results and create music cards
            while ($row = $result->fetch_assoc()) {
                echo '<div class="music-card">';
                echo '<div class="music-card-image">';
                echo '<img src="./productimg/' . $row['image'] . '" alt="Song Cover">';
                echo '</div>';
                echo '<div class="music-card-info">';
                echo '<h2 class="music-card-artist">Artist Name: <small>' . $row['artist'] . '</small></h2>';
                echo '<h3 class="music-card-song">Song Name: <small>' . $row['song'] . '</small></h3>';
                echo '<h4 class="music-card-song">Album: <small>' . $row['album'] . '</small></h4>';
                echo '<p class="music-card-duration">Duration: <small>' . $row['duration'] . '</small></p>';
                echo '<p class="music-card-genre">Genre: <small>' . $row['genre'] . '</small></p>';
                echo '</div>';
                echo '</div>';
            }

            // Close the database connection
            $mysqli->close();
            ?>
    </section>

    <footer class="footer">
        <h1 class="footer__copyright">Copyright &COPY; Spatify - 2023</h1>
    </footer>

</body>

</html>