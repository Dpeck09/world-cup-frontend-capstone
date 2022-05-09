import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import SignUp from '../views/SignUp.vue'
import Login from '../views/Login.vue'
import Logout from "../views/Logout.vue"
import UserGames from '../views/UserGames.vue';


const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/SignUp',
    name: 'SignUp',
    component: SignUp
  },
  {
    path: '/Login',
    name: 'Login',
    component: Login
  },
  {
    path: '/Logout',
    name: 'Logout',
    component: Logout
  },
  {
    path: '/UserGames',
    name: 'UserGames',
    component: UserGames
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
