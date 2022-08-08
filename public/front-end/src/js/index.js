const buttonDark = document.querySelector(".button-dark");
const svgElementLight = document.getElementById("light");
const svgElementDark = document.getElementById("moon");

if (localStorage.getItem("theme") == "dark") setDarkMode(true);
function setDarkMode(isDark) {
    if (isDark) {
        document.body.setAttribute("id", "darkmode");
        localStorage.setItem("theme", "dark");
        buttonDark.classList.add("active");
        svgElementLight.style.fill = "#c2c2c2";
        svgElementDark.style.fill = "black";
    } else {
        svgElementDark.style.fill = "#c2c2c2";
        document.body.setAttribute("id", "");
        localStorage.removeItem("theme");
        buttonDark.classList.remove("active");
        svgElementLight.style.fill = "black";
    }
}
