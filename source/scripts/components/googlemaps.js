/*
  |--------------------------------------------------------------------------
  | Google Maps Javascript API
  |--------------------------------------------------------------------------
  | Add the api script of google maps with your ´YOUR_API_KEY´ before the script.js from project
  | Example Pug: ´script(src= "https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY")´
  |
  */
export const googleMap = {
  template: `<div class="google-map" :id="mapName"></div>`,
  data () {
    return {
      mapName: 'map',
      zoom: 14,
      center: {
        latitude: -16.5272125,
        longitude: -68.0899999
      },
      markerCoordinates: [
        {
          latitude: -16.5152125,
          longitude: -68.1268001,
          title: `<div id="content">
                      <h2 id="firstHeading" class="firstHeading">TITULO DE SITIO</h2>
                      <div id="bodyContent">
                        <p><b>Descripción:</b> Descripcion del sitio.</p>
                        <p><b>Dirección:</b> Direccion, telefonos, mail y info del sitio</p>
                      </div><hr>
                      <footer><a class="button--cta center" href="#linkdegoogle" target="_blank">Ver en google maps</a></footer>
                    </div>`
        },
        {
          latitude: -16.5409881,
          longitude: -68.0670834,
          title: `<div id="content">
                      <h2 id="firstHeading" class="firstHeading">TITULO DE SITIO</h2>
                      <div id="bodyContent">
                        <p><b>Descripción:</b> Descripcion del sitio.</p>
                        <p><b>Dirección:</b> Direccion, telefonos, mail y info del sitio</p>
                      </div><hr>
                      <footer><a class="button--cta center" href="#linkdegoogle" target="_blank">Ver en google maps</a></footer>
                    </div>`
        },
        {
          latitude: -16.5400805,
          longitude: -68.052704,
          title: `<div id="content">
                      <h2 id="firstHeading" class="firstHeading">TITULO DE SITIO</h2>
                      <div id="bodyContent">
                        <p><b>Descripción:</b> Descripcion del sitio.</p>
                        <p><b>Dirección:</b> Direccion, telefonos, mail y info del sitio</p>
                      </div><hr>
                      <footer><a class="button--cta center" href="#linkdegoogle" target="_blank">Ver en google maps</a></footer>
                    </div>`
        }
      ]
    }
  },
  mounted () {
    const element = document.getElementById(this.mapName)
    const options = {
      zoom: 14,
      center: new window.google.maps.LatLng(this.center.latitude, this.center.longitude)
    }
    const map = new window.google.maps.Map(element, options)
    /* MEDIA QUERIE ZOOM GOOGLE MAPS */
    const mediumBp = window.matchMedia('(min-width: 950px)')
    const changeSize = mql => {
      mql.matches
        ? map.setZoom(14)
        : map.setZoom(11)
    }
    mediumBp.addListener(changeSize)
    changeSize(mediumBp)
    this.markerCoordinates.forEach((coord) => {
      const position = new window.google.maps.LatLng(coord.latitude, coord.longitude)
      const marker = new window.google.maps.Marker({ position, map })
      const infowindow = new window.google.maps.InfoWindow()
      marker.addListener('click', function () {
        infowindow.close()
      })
      window.google.maps.event.addListener(marker, 'click',
        (function (marker, coord, infowindow) {
          return function () {
            infowindow.setContent(coord.title)
            infowindow.open(map, marker)
            map.setZoom(16)
            map.setCenter(marker.getPosition())
          }
        })(marker, coord, infowindow))
    })
  }
}
