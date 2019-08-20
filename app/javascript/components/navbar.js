const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-palm');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 40) {
        navbar.classList.add('navbar-palm-transparent');
      } else {
        navbar.classList.remove('navbar-palm-transparent');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
