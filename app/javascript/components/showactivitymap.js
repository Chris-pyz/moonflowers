import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';


// recuperer l'endroit sur lequel afficher
const mapActivity = document.querySelector("#map");

// recuperer valeur input lat long
const latitude = document.querySelector("#activity_latitude").value;
const longitude = document.querySelector("#activity_longitude").value;

// injectMap(coordinates);


const showActivityMap = () => {
  const latitude = document.querySelector("#activity_latitude").value;
  const longitude = document.querySelector("#activity_longitude").value;
console.log("coucou depuis show activity map");
  const lng = longitude;
  const lat = latitude;

  const mapDiv = document.getElementById('map-new-activity');
  mapDiv.innerHTML = '';
    mapboxgl.accessToken = mapDiv.dataset.mapboxApiKey;
    console.log(lng);
  const map = new mapboxgl.Map({
    container: 'map-new-activity',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [lng, lat],
    zoom: 12
  });
  new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map);
};


export {showActivityMap}
