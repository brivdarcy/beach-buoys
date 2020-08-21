import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


const dynamicPriceCalculator = () => {
const bookingForm = document.getElementById('booking-form-div');
if (!bookingForm) {
  return
}

const bookings = JSON.parse(bookingForm.dataset.bookings);
  flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today",
    inline: true,
    dateFormat: "Y-m-d",
    "disable": bookings,
  })

  let nbrOfDays = 0;
  const startDate = document.getElementById("range_start");
  const endDate = document.getElementById("range_end");

  const dynamicPrice = () => {
    let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value)
    nbrOfDays = dateDiffInMilliseconds / 86400000;
    return nbrOfDays;
  };

  // dynamicPrice();

  const totalDays = document.getElementById("total-days")
  const buoyPricePerDay = document.getElementById("buoy-price-per-day").innerText;
  const totalPriceElement = document.getElementById("total-price");
  const display = document.querySelector(".display")

      if(startDate && endDate) {
        [startDate, endDate].forEach(date => {
          date.addEventListener("change", (event) => {
          display.classList.remove("d-none");
           if (isNaN(dynamicPrice()) === true) {
            totalDays.innerText = 0;
            totalPriceElement.innerText = 0;
           } else {
            totalDays.innerText = dynamicPrice();
            totalPriceElement.innerText = dynamicPrice() * buoyPricePerDay;
           }
          });
        })
      };

  // dynamicPriceCalculator();
}

export {dynamicPriceCalculator}
