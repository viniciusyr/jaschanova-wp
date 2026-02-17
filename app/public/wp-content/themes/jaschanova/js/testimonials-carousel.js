document.addEventListener('DOMContentLoaded', function () {
  const container = document.querySelector('.testimonials-carousel-container');
  const carousel = document.querySelector('.testimonials-carousel');
  const paginationContainer = document.querySelector('.testimonials-pagination');
  const cards = document.querySelectorAll('.testimonial-card');
  
  if (!container || !carousel || !paginationContainer || cards.length === 0) {
    return;
  }

  let currentSlide = 0;
  let autoplayInterval;
  const autoplayDelay = 5000;

  function createPaginationDots() {
    paginationContainer.innerHTML = '';
    cards.forEach((_, index) => {
      const dot = document.createElement('button');
      dot.classList.add('testimonials-pagination-dot');
      dot.setAttribute('aria-label', `Go to testimonial ${index + 1}`);
      dot.addEventListener('click', () => {
        goToSlide(index);
        resetAutoplay();
      });
      paginationContainer.appendChild(dot);
    });
  }

  function goToSlide(index) {
    if (index < 0 || index >= cards.length) return;
    
    currentSlide = index;
    const cardWidth = cards[0].offsetWidth;
    const gap = 30;
    const offset = currentSlide * (cardWidth + gap);
    
    carousel.style.transform = `translateX(-${offset}px)`;
    
    updateActiveDot();
  }

  // Atualizar dot ativo
  function updateActiveDot() {
    const dots = paginationContainer.querySelectorAll('.testimonials-pagination-dot');
    dots.forEach((dot, index) => {
      if (index === currentSlide) {
        dot.classList.add('active');
      } else {
        dot.classList.remove('active');
      }
    });
  }

  function nextSlide() {
    const nextIndex = (currentSlide + 1) % cards.length;
    goToSlide(nextIndex);
  }

  function prevSlide() {
    const prevIndex = (currentSlide - 1 + cards.length) % cards.length;
    goToSlide(prevIndex);
  }

  function startAutoplay() {
    autoplayInterval = setInterval(nextSlide, autoplayDelay);
  }

  function stopAutoplay() {
    if (autoplayInterval) {
      clearInterval(autoplayInterval);
    }
  }

  function resetAutoplay() {
    stopAutoplay();
    startAutoplay();
  }

  let startX = 0;
  let endX = 0;

  container.addEventListener('touchstart', (e) => {
    startX = e.touches[0].clientX;
    stopAutoplay();
  });

  container.addEventListener('touchmove', (e) => {
    endX = e.touches[0].clientX;
  });

  container.addEventListener('touchend', () => {
    const diff = startX - endX;
    if (Math.abs(diff) > 50) {
      if (diff > 0) {
        nextSlide();
      } else {
        prevSlide();
      }
    }
    resetAutoplay();
  });

  container.addEventListener('mouseenter', stopAutoplay);
  container.addEventListener('mouseleave', startAutoplay);

  document.addEventListener('keydown', (e) => {
    if (e.key === 'ArrowLeft') {
      prevSlide();
      resetAutoplay();
    } else if (e.key === 'ArrowRight') {
      nextSlide();
      resetAutoplay();
    }
  });

  createPaginationDots();
  goToSlide(0);
  startAutoplay();

  let resizeTimeout;
  window.addEventListener('resize', () => {
    clearTimeout(resizeTimeout);
    resizeTimeout = setTimeout(() => {
      goToSlide(currentSlide);
    }, 250);
  });
});
