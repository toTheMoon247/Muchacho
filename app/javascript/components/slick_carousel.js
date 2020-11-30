export const slickCarousel = () => {
  const carousel = document.querySelector('.multiple-items');
  $('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3
    });
};

