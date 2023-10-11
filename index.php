<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spatify - The music library for you!</title>
    <link rel="stylesheet" href="./index.css">
    <link rel="shortcut icon" href="./img/spotify-logo.webp" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" rel="stylesheet">
    <script src="./functions.js" defer></script>
</head>

<body id="body">
    <header class="header">
        <nav class="header__container">
            <div class="header__imgcontainer">
                <a class="header__imgLinkC" href="./index.php"><img class="header__img" src="./img/spotify-logo.webp" alt=""></a>
                <h1 class="header__imgSubText">Spatify</h1>
            </div>
            <div class="header__searchcontainer">
                <form class="header__searchbarform" action="#" method="GET">
                    <button class="header__searchsubmit" type="submit"><i class="fa fa-search"></i></button>
                    <input class="header__searchbar" type="text" placeholder="Search.." name="search">
                </form>
            </div>
        </nav>
    </header>

    <div id="info-container" class="info-container">
        <div class="info-container-c">
            <div class="info-content">
                <div class="info-content-close">
                    <button id="close-info" class="close-info">X</button>
                </div>
                <div class="info-content-c">
                    <div class="info-content-img-con">
                        <img id="img" src="" alt="">
                    </div>
                    <div class="info-content-more">
                        <p id="artist"></p>
                        <p id="song"></p>
                        <p id="album"></p>
                        <p id="dur"></p>
                        <p id="genre"></p>
                    </div>
                    <div class="info-content-listen">
                        <a id="link" class="info-content-listen-link" href="" target="_blank"><img src="./img/spotify-logo.webp" alt=""></a>
                        <p>Open</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="filters">
        <div class="filter--container">
            <form method="get" action="index.php">
                <label for="artistFilter">Sort by Artist Name:</label>
                <select onchange="artistfilter()" name="artistFilter" id="artistFilter">
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

            include("filter.php");

            // Shuffle the matching music randomly
            shuffle($matchingMusic);

            foreach ($matchingMusic as $row) {
                ?>
                <div class="music-card">
                    <div class="music-card-image">
                        <img src="./productimg/<?php echo $row['image'] ?>" alt="Song Cover">
                    </div>
                    <div class="music-card-info">
                        <p class="music-card-artist">Artist Name: <small>
                                <?php echo $row['artist'] ?>
                            </small></p>
                        <p class="music-card-artist">Song Name: <small>
                                <?php echo $row['song'] ?>
                            </small></p>
                        <p class="music-card-artist">Album: <small>
                                <?php echo $row['album'] ?>
                            </small></p>
                        <p class="music-card-artist">Duration: <small>
                                <?php echo $row['duration'] ?>
                            </small></p>
                        <p class="music-card-artist">Genre: <small>
                                <?php echo $row['genre'] ?>
                            </small></p>
                    </div>
                    <div class="music-card-click">
                    <button class="music-card-button" onclick="showInfo('<?php echo $row['artist']; ?>', '<?php echo $row['song']; ?>', '<?php echo $row['album']; ?>', '<?php echo $row['duration']; ?>', '<?php echo $row['genre']; ?>', '<?php echo $row['image']; ?>', '<?php echo $row['link']; ?>')">More Info</button>
                    </div>
                </div>
                <?php
            }         
            ?>
        </div>
    </section>

    <footer class="footer">
        <h1 class="footer__copyright">Copyright &COPY; Spatify - 2023</h1>
    </footer>

</body>

</html>