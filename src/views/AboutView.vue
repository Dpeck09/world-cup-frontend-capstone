<script>
import axios from "axios";
export default {
  data: function () {
    return {
      games: [],
    };
  },
  created: function () {
    this.indexGames();
  },
  methods: {
    indexGames: function () {
      axios.get("/games").then((response) => {
        console.log("games index", response);
        this.games = response.data;
      });
    },
  },
};
</script>

<template>
  <div class="home">
    <h1>All Games</h1>
    <div v-for="game in games" v-bind:key="game.id">
      <h2>{{ game.name }}</h2>
      <img v-bind:src="game.url" v-bind:alt="game.name" />
      <p>Match: {{ game.game_number }}</p>
      <h4>Home: {{ game.home }}</h4>
      <h4>Away: {{ game.away }}</h4>
    </div>
  </div>
</template>

<style></style>