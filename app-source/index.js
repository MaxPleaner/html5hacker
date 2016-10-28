
var code = document.getElementById("text").innerHTML
var i = 0;
addInterval = 100
document.addEventListener("keydown", function (){
    terminal.innerText += code.slice(i, i+addInterval);
    i += addInterval;
    if (i > code.length) {i=0;}
});

setInterval(function (){
    var term = document.getElementById("terminal");
    term.scrollTop = term.scrollHeight;
}, 100);
