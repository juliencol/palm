import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Need an island ? ", "Palm is here for you !"],
      typeSpeed: 10,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
