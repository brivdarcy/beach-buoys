import "jquery-bar-rating";

const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
    // showSelectedRating: true,
    // showValues: true
  });
};

export { initStarRating };
