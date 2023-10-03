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
            <form method="get" action="index.php">
                <label for="artistFilter">Sort by Artist Name:</label>
                <select name="artistFilter" id="artistFilter">
                    <option value="asc">A-Z</option>
                    <option value="desc">Z-A</option>
                </select>
                <button class="button__apply" type="submit">Apply</button>
            </form>
        </div>
        <div class="filter--container">
            <form method="get" action="index.php">
                <label for="genreFilter">Filter by Genre:</label>
                <select name="genreFilter" id="genreFilter">
                    <option value="">All Genres</option>
                    <option value="Pop">Pop</option>
                    <option value="Rock">Rock</option>
                    <option value="Hip-Hop">Hip-Hop</option>
                    <option value="K-Pop">K-Pop</option>
                    <option value="R&B">R&B</option>
                    <option value="Jazz">Jazz</option>
                    <option value="Nederlandstalig">Nederlandstalig</option>
                </select>
                <button class="button__apply" type="submit">Apply</button>
            </form>
        </div>
        <div class="filter--container">
            <form method="get" action="index.php">
                <label for="durationFilter">Filter by Duration:</label>
                <select name="durationFilter" id="durationFilter">
                    <option value="">All Durations</option>
                    <option value="short">Short (less than 3 min)</option>
                    <option value="medium">Medium (3-5 min)</option>
                    <option value="long">Long (more than 5 min)</option>
                </select>
                <button class="button__apply" type="submit">Apply</button>
            </form>
        </div>
    </div>

    <section class="library">
        <div class="music--cardContainer">
            <?php
            require_once('../src/var_dump.php');

            // Initialize filter variables
            $artistFilter = isset($_GET['artistFilter']) ? $_GET['artistFilter'] : '';
            $genreFilter = isset($_GET['genreFilter']) ? $_GET['genreFilter'] : '';
            $durationFilter = isset($_GET['durationFilter']) ? $_GET['durationFilter'] : '';

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

            // Create a prepared statement
            $stmt = $mysqli->prepare($sql);

            if (!empty($genreFilter)) {
                // Bind the parameter to the prepared statement
                $stmt->bind_param("s", $genreFilter);
            }

            // Execute the prepared statement
            $stmt->execute();

            // Fetch music data from the database
            $result = $stmt->get_result();

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

            // Close the database connection and statement
            $stmt->close();
            $mysqli->close();
            ?>
        </div>
    </section>

    <footer class="footer">
        <h1 class="footer__copyright">Copyright &COPY; Spatify - 2023</h1>
    </footer>

</body>

</html>