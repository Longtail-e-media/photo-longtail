function dropFunction() {
    document.getElementById("dropdownFilterMenu").classList.toggle("shown-menu");
    if (document.getElementById("dropdownFilterMenu").classList.contains('shown-menu')) {
        document.getElementById('dropIcon').style.transform = "rotate(180deg)";
    } else {
        document.getElementById('dropIcon').style.transform = "rotate(0deg)";
    }
}
window.onclick = function (event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}