const dashboard_animation = () => {
  const btn_bookings = document.getElementById('reservations_btn');
  const bookings_list = document.getElementById('islands_btn');
  const one_reservation = document.getElementById('reservations');
  const one_island = document.getElementById('my_islands');

  btn_bookings.addEventListener("click", (event) => {
    bookings_list.classList.remove("active");
    btn_bookings.classList.add("active");
    one_reservation.classList.remove("disapear");
    one_island.classList.add("disapear");

  });

  bookings_list.addEventListener("click", (event) => {
    btn_bookings.classList.remove("active");
    bookings_list.classList.add("active");
    one_island.classList.remove("disapear");
    one_reservation.classList.add("disapear");
  });

};



export { dashboard_animation };
