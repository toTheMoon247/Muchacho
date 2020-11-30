// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { backgroundVideo } from '../components/bideo';
import { initAutocomplete } from '../components/init_autocomplete';
document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initUpdateNavbarOnScroll();

var dropdown = document.getElementsByClassName("dropdown-btn");

for (var i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });

}});

const initCards = () => {
 const cards = document.querySelectorAll("#dish_basket");
 cards.forEach(card => {
   card.addEventListener('click', e => {
    const input = document.querySelector("#order_dish_id")
    const array = input.value.split(",")
    array.push(e.currentTarget.dataset.dishId)
    const name = e.currentTarget.dataset.dishName
    document.querySelector(".basket-info").insertAdjacentHTML("beforeend",`<div>${name}</div>`)
    input.value = array.join(",")
   })
 })
};

const initWines = () => {
  const cards = document.querySelectorAll("#wine_basket");
  cards.forEach(card => {
    card.addEventListener('click', e => {
     const input = document.querySelector("#order_wine_id")

     const array = input.value.split(",")
     array.push(e.currentTarget.dataset.dishId)
     const name = e.currentTarget.dataset.dishName
    document.querySelector(".basket-info").insertAdjacentHTML("beforeend",`<div>${name}</div>`)
     input.value = array.join(",")
    })
  })
 };


document.addEventListener('turbolinks:load', () => {

  // Call your JS functions here
  initUpdateNavbarOnScroll();
  backgroundVideo();
  initCards();
  initWines();
  initAutocomplete();
  console.log("hello");

});

