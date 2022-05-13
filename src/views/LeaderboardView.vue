<script>
 import axios from "axios";
 export default {
   data: function () {
     return {
       users: [],
     };
   },
   created: function () {
     this.indexUsers();
     this.indexUser_Games();
   },
   methods: {
     indexUsers: function () {
       axios.get("/users").then((response) => {
         console.log("users index", response);
         this.users = response.data;
       });
     },
     indexUser_Games: function () {
       axios.get("/user_games").then((response) => {
         console.log("User_games index", response);
         this.User_games = response.data;
       });
     },
   },
 };
 </script>


 <template>
  <div class="users-index">

  <p v-for="user in users">
    {{ user.username }}
  </p>


 </div>

 <div class="User_Games-index">
   
 <p v-for="user_game in user_games"><hr>{{ user_games.user_pick }}</p>

 </div>


    
  <router-link to="/users">Back to all users</router-link>
  




 </template>