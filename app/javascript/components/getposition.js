




const getPosition = () => {
const btn = document.querySelector(".btn-position");
const latitude = document.querySelector("#activity_latitude");
const longitude = document.querySelector("#activity_longitude");
function showPosition(position) {
  latitude.value = position.coords.latitude;
  longitude.value = position.coords.longitude;
}

if (btn) {
  btn.addEventListener("click", event => {
    console.log("salut");
  navigator.geolocation.getCurrentPosition(showPosition);
  })

}



}

export {getPosition}
