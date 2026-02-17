document.addEventListener('DOMContentLoaded', function () {
  const container = document.querySelector('.services-carousel-container');
  const carousel = document.querySelector('.services-carousel');
  const dots = document.querySelectorAll('.pagination-dot');
  const cards = document.querySelectorAll('.services-card');
  const gap = 24;

  if (!container || !carousel || cards.length === 0 || dots.length === 0) {
    return;
  }

  let currentSlide = 0;
  let startX = 0;
  let endX = 0;

  function getItemsPerView() {
    const firstCard = cards[0];
    if (!firstCard) return 1;

    const cardWidth = firstCard.offsetWidth;
    const containerWidth = container.offsetWidth;
    const perView = Math.max(1, Math.round(containerWidth / (cardWidth + gap)));
    return perView;
  }

  function getMaxIndex() {
    const itemsPerView = getItemsPerView();
    return Math.max(0, cards.length - itemsPerView);
  }

  function updateDotsVisibility() {
    const maxIndex = getMaxIndex();
    dots.forEach((dot, index) => {
      dot.style.display = index <= maxIndex ? 'inline-flex' : 'none';
    });
  }

  function scrollToSlide(slideIndex) {
    const maxIndex = getMaxIndex();
    const clampedIndex = Math.min(Math.max(slideIndex, 0), maxIndex);
    const card = cards[clampedIndex];
    if (!card) return;

    const cardWidth = card.offsetWidth;
    const offset = clampedIndex * (cardWidth + gap);

    carousel.style.transform = `translateX(-${offset}px)`;

    dots.forEach((d) => d.classList.remove('active'));
    if (dots[clampedIndex]) {
      dots[clampedIndex].classList.add('active');
    }

    currentSlide = clampedIndex;
  }

  dots.forEach((dot) => {
    dot.addEventListener('click', function (event) {
      event.preventDefault();
      const slideIndex = parseInt(this.dataset.slide, 10);
      scrollToSlide(slideIndex);
    });
  });

  updateDotsVisibility();

  container.addEventListener('touchstart', function (event) {
    startX = event.touches[0].clientX;
  });

  container.addEventListener('touchend', function (event) {
    endX = event.changedTouches[0].clientX;
    const deltaX = endX - startX;

    if (Math.abs(deltaX) < 40) return;

    if (deltaX < 0) {
      scrollToSlide(currentSlide + 1);
    } else {
      scrollToSlide(currentSlide - 1);
    }
  });

  window.addEventListener('resize', function () {
    updateDotsVisibility();
    scrollToSlide(currentSlide);
  });
});
