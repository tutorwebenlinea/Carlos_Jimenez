let textarea = document.getElementsByTagName("textarea");

for (var i = 0; i < textarea.length; i++) {
   textarea[i].textContent = "";
}

console.log('ok');