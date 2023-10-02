document.addEventListener("DOMContentLoaded", function () {
    const artistFilter = document.getElementById("artistFilter");
    const genreFilter = document.getElementById("genreFilter");
    const durationFilter = document.getElementById("durationFilter");

    const musicCardContainer = document.querySelector(".music--cardContainer");

    // Function to fetch and display filtered/sorted cards
    function updateMusicCards() {
        const artistSortOrder = artistFilter.value;
        const selectedGenre = genreFilter.value;
        const selectedDuration = durationFilter.value;

        // AJAX request to fetch filtered/sorted data from the server
        const xhr = new XMLHttpRequest();
        xhr.open("GET", `filter.php?artist=${artistSortOrder}&genre=${selectedGenre}&duration=${selectedDuration}`, true);

        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Clear existing cards
                musicCardContainer.innerHTML = xhr.responseText;
            }
        };

        xhr.send();
    }

    // Attach event listeners to filters
    artistFilter.addEventListener("change", updateMusicCards);
    genreFilter.addEventListener("change", updateMusicCards);
    durationFilter.addEventListener("change", updateMusicCards);

    // Initial load of music cards
    updateMusicCards();
});