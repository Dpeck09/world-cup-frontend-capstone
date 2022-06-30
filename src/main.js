import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import axios from "axios";

axios.defaults.baseURL = process.env.NODE_ENV === "development" ? "https://worldcup-backend.herokuapp.com" : "/";

 var jwt = localStorage.getItem("jwt");
 if (jwt) {
 axios.defaults.headers.common["Authorization"] = `Bearer ${jwt}`;
}


createApp(App).use(router).mount('#app')
