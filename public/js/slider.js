var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  var t=n||1;
  showDivs(slideIndex += t);
  setTimeout(plusDivs,7000);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("slides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  x[slideIndex-1].style.display = "block";
}

setTimeout(plusDivs,7000);
