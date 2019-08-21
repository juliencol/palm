import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Need an island ? ", "Palm is here for you !"],
    typeSpeed: 10,
    loop: true
  });
}

export { loadDynamicBannerText };
