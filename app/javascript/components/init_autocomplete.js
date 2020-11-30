import places from 'places.js';
const initAutocomplete = () => {
  const addressInput = document.getElementById('restaurant_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};
export { initAutocomplete };

$('.navicon').on('click', function (e) {
  e.preventDefault();
  $(this).toggleClass('navicon--active');
  $('.toggle').toggleClass('toggle--active');
});
