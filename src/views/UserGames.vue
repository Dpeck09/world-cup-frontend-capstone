<script>
import axios from "axios";
export default {
  data: function () {
    return {
      UserGames: [],
    };
  },
  created: function () {
    this.indexUserGames();
  },
  methods: {
    indexPhotos: function () {
      axios.get("/UserGames").then((response) => {
        console.log("UserGames index", response);
        this.UserGames = response.data;
      });
    },
  },
};
</script>

<template>
  <div class="home">
    <h1>All User Picks</h1>
    <div v-for="UserGame in UserGames" v-bind:key="UserGames.id">
    <p>Match: {{ UserGames.game_number }}</p>
      <p>match: {{ UserGames.game_number }}</p>
      <p>User Pick: {{ UserGames.user_pick }}</p>
      <p>Points: {{ UserGames.points_awarded }}</p>
    </div>
  </div>
</template>

<style></style>