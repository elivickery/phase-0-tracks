console.log("Script is running");

function pinkHeader(event) {
    event.target.style.border = "2px solid pink";
};

var header = document.getElementById("header");

header.addEventListener("click", pinkHeader);



