<script>
import axios from "axios";
export default {
  data: function () {
    return {
      games: [],
      user_games: [],
    };
  },
  created: function () {
    this.indexGames();
  },
  methods: {
    indexGames: function () {
      axios.get("/games.json").then((response) => {
        console.log("games index", response);
        this.games = response.data;
      });
    },
    submit: function () {
      console.log()
      axios.post("/user_games.json", {user_games: this.games}).then(
        (response) => {
          console.log(response.data);
          this.$router.push("/user_games");
      })
      .catch((error) => {
            this.errors = error.response.data.errors;
      });
    }
  },
};
</script>

<template>
  <div class="home">
    <h1>All Games</h1>
    <div v-for="game in games" v-bind:key="game.id">
      <p>Match {{ game.game_number }}</p>
      <h4> {{ game.home }} VS {{ game.away }}</h4> 
      {{ game.user_selection }}
      <select v-model="game.user_selection">
      <option selected><h4>{{ game.home }}</h4></option>
      <option><h4>{{ game.away }}</h4></option>
      </select>
      <span>Selected: {{ selected }}</span>
      <hr>
    </div>
      <button v-on:click="submit()">submit</button>
  </div>
</template>

<style></style>