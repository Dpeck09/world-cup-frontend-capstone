var PORT = process.env.PORT || 5000;
var express = require('express');
var app = express();

import { createRouter, createWebHistory } from 'vue-router'
import LeaderboardView from '../views/LeaderboardView.vue'
import SignUp from '../views/SignUp.vue'
import Login from '../views/Login.vue'
import Logout from "../views/Logout.vue"
import UserAccount from '../views/UserAccount.vue';
import Test from '../views/Test.vue';


const routes = [
  {
    path: '/Leaderboard',
    name: 'Leaderboard',
    component: LeaderboardView
  },
  {
    path: '/SignUp',
    name: 'SignUp',
    component: SignUp
  },
  {
    path: '/Login',
    name: 'Login',
    component: Login,
    
  },
  {
    path: '/Logout',
    name: 'Logout',
    component: Logout
  },
  {
    path: '/UserAccount',
    name: 'UserAccount',
    component: UserAccount
  },
  {
    path: '/Test',
    name: 'Test',
    component: Test
  },
  {
    path: '/Guess',
    name: 'Guess',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/GuessView.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
