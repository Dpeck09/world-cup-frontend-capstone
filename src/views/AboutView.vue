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
      <p>Match: {{ game.game_number }}</p>
      <h4>Home: {{ game.home }}</h4>
      <h4>Away: {{ game.away }}</h4>
      <select v-model="selected">
      <option selected><h4>{{ game.home }}</h4></option>
      <option><h4>{{ game.away }}</h4></option>
      </select>
      <span>Selected: {{ selected }}</span>
      <hr>
    </div>
  </div>
</template>

<style></style>