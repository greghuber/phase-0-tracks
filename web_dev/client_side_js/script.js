/* Write two functions.  
   One to add border, other to change font. */

function redBorder(event) {
	event.target.style.border = "6px solid #cc0000";
}

function changeFont(event) {
	event.target.style.fontFamily = "Helvetica";
}

/* Call on two methods by mouse click events.
   Add border to photo, change font in paragraph and
   first element child of ordered list */

var photo = document.getElementById("pitcher");
photo.addEventListener("click", redBorder);

var paragraph = document.getElementById("history");
paragraph.addEventListener("click", changeFont);

var list = document.getElementById("standings").firstElementChild;
list.addEventListener("click", changeFont);

/* Create new html element.  Append type onto existing paragraph */

var newType = document.createTextNode("  This is the text we're adding to the original paragraph.");
paragraph.appendChild(newType);