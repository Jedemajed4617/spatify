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
                <a style="cursor: pointer;" href="./index.php"><img class="header__img" src="./img/spotify-logo.webp"
                        alt=""></a>
                <h1 class="header__imgSubText">Spatify - CMS</h1>
            </div>
            <div class="header__searchcontainer">
                <form class="header__searchbarform" action="action_page.php">
                    <button class="header__searchsubmit" type="submit"><i class="fa fa-search"></i></button>
                    <input class="header__searchbar" type="text" placeholder="Search.." name="search">
                </form>
            </div>
        </nav>
    </header>

    <section class="music">
        <section class="activeMusic">
            <div class="musicCountContainer">
                <?php include('count_music.php'); ?>
            </div>
        </section>
        <div class="form-container">
            <form class="createmusic" action="createsong.php" method="POST" enctype="multipart/form-data">
                <h2>Add a New Song</h2>
                <div class="form-group">
                    <label for="fileToUpload">Upload Image:</label>
                    <input class="musicinput" type="file" id="fileToUpload" name="fileToUpload" required>
                </div>
                <div class="form-group">
                    <label for="genre">Genre:</label>
                    <select class="musicinput" id="genre" name="genre" required>
                        <option value="Pop">Pop</option>
                        <option value="Rock">Rock</option>
                        <option value="Hip-Hop">Hip-Hop</option>
                        <option value="K-Pop">K-Pop</option>
                        <option value="R&B">R&B</option>
                        <option value="Jazz">Jazz</option>
                        <option value="Nederlandstalig">Nederlandstalig</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="dur">Duration:</label>
                    <select class="musicinput" id="dur" name="dur" required>
                        <option value="short">Short (less than 3 min)</option>
                        <option value="medium">Medium (3-5 min)</option>
                        <option value="long">Long (more than 5 min)</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="artist">Artist:</label>
                    <input class="musicinput" type="text" id="artist" name="artist" required>
                </div>
                <div class="form-group">
                    <label for="name">Song Name:</label>
                    <input class="musicinput" type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="artist">Album:</label>
                    <input class="musicinput" type="text" id="album" name="album" required>
                </div>
                <button class="buttonmusic" type="submit">Submit</button>
            </form>
        </div>
    </section>

    <footer class="footer">
        <h1 class="footer__copyright">Copyright &COPY; Spatify - 2023</h1>
    </footer>

</body>

</html>