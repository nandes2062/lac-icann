import { menuToggle } from './modules/menu'
import { getdate } from './modules/date'
import { edTabs } from './modules/tabs'
import { goups } from './modules/goup'
// import { videoSize } from "./modules/video";

// Slider VanillaJS (https://github.com/ganlanyuan/tiny-slider)
import { tns } from 'tiny-slider/src/tiny-slider'
import { optionSlider } from './modules/slider'

// import Data Vue
import { pathPage, pathMedia } from './data/routes'
import { menuinicio, mainmenu } from './data/menus'
import { contactform } from './data/contact-form'

import Vue from 'vue/dist/vue.min'
// import Vue from 'vue/dist/vue'
import axios from 'axios/dist/axios.min'
// import { googleMap } from './components/googlemaps'

// Vue Components
// Vue.component('google-map', googleMap)

const rex = new Vue({
  el: '#rex',
  data: {
    path_media: pathMedia,
    path_page: pathPage,
    menuinicio,
    mainmenu,
    formSubmitted: false,
    vue: contactform,
    lang: 'Español (spanish)'
  },
  mounted: function () {
    window.edTabs = edTabs
    tns(optionSlider)
    goups()
    menuToggle()
    getdate()
  },
  methods: {
    onChange:function () {
      if(this.lang == 'Español'){
        console.log(1)
      }
      else if(this.lang == 'English'){
        console.log(2)
      }
    },
    isFormValid: function () {
      return this.nombre !== ''
    },
    clearForm: function () {
      this.vue.nombre = ''
      this.vue.email = ''
      this.vue.telefono = ''
      this.vue.movil = ''
      this.vue.direccion = ''
      this.vue.ciudad = ''
      this.vue.mensaje = ''
      this.vue.formSubmitted = false
    },
    submitForm: function () {
      if (!this.isFormValid()) return
      this.formSubmitted = true
      axios.post('../../mail.php', { vue: this.vue })
        .then((response) => {
          this.vue.envio = response.data
          this.clearForm()
        })
    }
  }
})
Vue.use(rex)
