function disableScroll() {
    // Get the current scroll position
    var scrollX = window.scrollX || window.pageXOffset;
    var scrollY = window.scrollY || window.pageYOffset;
  
    // Set the body to position fixed and remember the scroll position
    document.body.style.position = "fixed";
    document.body.style.top = -scrollY + "px";
}
  
function enableScroll() {
    var scrollY = parseInt(document.body.style.top || "0");
    document.body.style.position = "";
    document.body.style.top = "";
    window.scrollTo(0, scrollY);
}

function showInfo(artist, song, album, duration, genre, image, link) {
    var infoContainer = document.getElementById('info-container');
    var closeInfoButton = document.getElementById('close-info');

    document.getElementById("artist").innerText = "Artist: " + artist;
    document.getElementById("genre").innerText = "Genre: " + genre;
    document.getElementById("dur").innerText = "Duration: " + duration;
    document.getElementById("song").innerText = "Song: " + song;
    document.getElementById("album").innerText = "Album: " + album;
    document.getElementById("img").src = "./productimg/" + image;
    document.getElementById("link").setAttribute("href", link);

    document.getElementById("body").style.overflow = "hidden";

    console.log(link);

    // Display the info container
    infoContainer.style.display = 'block';
    disableScroll();

    // Close the info container when the close button is clicked
    closeInfoButton.addEventListener('click', function () {
        infoContainer.style.display = 'none';
        document.getElementById("body").style.overflow = "visible";
        enableScroll();
    });
}