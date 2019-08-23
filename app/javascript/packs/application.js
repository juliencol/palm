import "../plugins/flatpickr";
import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'

initMapbox();
import "../components/dashboard";
import { dashboard_animation } from '../components/dashboard';
dashboard_animation();
