




const getPosition = () => {
const latitude = document.querySelector("#activity_latitude");
const longitude = document.querySelector("#activity_longitude");
function showPosition(position) {
  latitude.value = position.coords.latitude;
  longitude.value = position.coords.longitude;
}

window.addEventListener('load', (event) => {
    navigator.geolocation.getCurrentPosition(showPosition) + `Load\n`;
});



}



export {getPosition}
