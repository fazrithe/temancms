const buttonDark = document.querySelector(".button-dark");
if (localStorage.getItem("theme") == "dark") setDarkMode(true);
function setDarkMode(isDark) {
    if (isDark) {
        document.body.setAttribute("id", "darkmode");
        localStorage.setItem("theme", "dark");
        buttonDark.classList.add("active");
    } else {
        document.body.setAttribute("id", "");
        localStorage.removeItem("theme");
        buttonDark.classList.remove("active");
    }
}
