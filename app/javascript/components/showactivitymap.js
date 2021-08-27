import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';


// recuperer l'endroit sur lequel afficher
const mapActivity = document.querySelector("#map");

// recuperer valeur input lat long


// injectMap(coordinates);


const showActivityMap = () => {
  const latitude = document.querySelector("#activity_latitude").value;
  const longitude = document.querySelector("#activity_longitude").value;
  const lng = longitude;
  const lat = latitude;

  const mapDiv = document.getElementById('map-new-activity');
  mapDiv.innerHTML = '';
    mapboxgl.accessToken = mapDiv.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map-new-activity',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [lng, lat],
    zoom: 12
  });
  const markers = JSON.parse(mapDiv.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);

      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';

  new mapboxgl.Marker(element)
    .setLngLat([lng, lat])
    .setPopup(popup)
    .addTo(map);
});


}


export {showActivityMap}
