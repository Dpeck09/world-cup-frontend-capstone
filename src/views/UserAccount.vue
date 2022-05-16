<script>
 import axios from "axios";
 export default {
   data: function () {
     return {
       user: {},
       user_game: {},
     };
   },
   created: function () {
     axios.get("/users/" + this.$route.params.id + ".json").then((response) => {
       console.log("users show", response);
       this.user = response.data;
     });
     axios.get("/user_games/" + this.$route.params.id + ".json").then((response) => {
       console.log("user_games show", response);
       this.user_games = response.data;
     });
   },
   methods: {
     
   },
 };
 </script>

 <template>
  <div class="users-show">
    <h2>{{ user.username }}</h2>

 
 <p v-for="guess in user.user_games">{{ guess.user_pick }}</p>

<p> {{ user.point_total}} </p>
    
    <router-link to="/">Back to all users</router-link>
  </div>




 </template>

 <style>
 
 </style>