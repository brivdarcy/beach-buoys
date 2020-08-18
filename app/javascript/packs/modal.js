
const button = document.getElementById("book");

const open = button.AddEventListener("click", (event) => {
  event.preventDefault();
  $('#myModal').modal('show')
});

export { open };
