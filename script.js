// Get a reference to the navigation bar element
const categoryNav = document.getElementById("video-categories");

// Get a reference to all the video articles
const videos = document.querySelectorAll("article");

// Add a click event listener to the navigation bar
categoryNav.addEventListener("click", function (event) {
  // Only filter if a category link was clicked
  if (event.target.tagName === "A") {
    // Remove the "active" class from all category links
    const activeLinks = categoryNav.querySelectorAll(".active");
    activeLinks.forEach((link) => {
      link.classList.remove("active");
    });

    // Add the "active" class to the clicked link
    const clickedLink = event.target;
    clickedLink.classList.add("active");

    // Get the category that was clicked
    const category = clickedLink.textContent.toLowerCase();

    // Show all videos if "All" was clicked, otherwise filter by category
    videos.forEach((video) => {
      if (category === "all" || video.classList.contains(category)) {
        video.style.display = "block";
      } else {
        video.style.display = "none";
      }
    });
  }

  // Prevent the default link behavior
  event.preventDefault();
});
