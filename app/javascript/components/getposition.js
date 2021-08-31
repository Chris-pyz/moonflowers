import {showActivityMap} from "./showactivitymap";




const getPosition = () => {
const latitude = document.querySelector("#activity_latitude");
const longitude = document.querySelector("#activity_longitude");

if (latitude) {
function showPosition(position) {
  latitude.value = position.coords.latitude;
  longitude.value = position.coords.longitude;
  showActivityMap();
}

navigator.geolocation.getCurrentPosition(showPosition) + `Load\n`;


}

}



export {getPosition}
