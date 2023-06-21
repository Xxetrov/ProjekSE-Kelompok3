const btn = document.querySelector(".button-mobile");
const sidebar = document.querySelector(".sidebar-dekstop");
const content = document.querySelector(".content");
let heart = document.getElementById("heart");

// Tambahkan event listener pada tombol sidebar
btn.addEventListener("click", () => {
  sidebar.classList.toggle("-translate-x-full");
  content.classList.toggle("darken");
});