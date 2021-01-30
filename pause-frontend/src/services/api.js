class API {
   
   // constructor
   constructor(port = 3000 ){
      this.url = `http://localhost:${port}`
   }

   // helpers
   parseJSON = response => response.json()

   headers = {"Accepts": "application/json", "Content-Type": "application/json"}

   // getters 
   get meditationURL(){
      return this.url + '/meditations'
   }
   
   get ratingURL(){
     return this.url + '/ratings'
   }

   // fetches

   fetchMeditations = () => {
      return fetch(this.meditationURL).then(this.parseJSON)
   }
  
   fetchMeditation = (id) => {
      return fetch(this.meditationURL + `/${id}`).then(this.parseJSON)
   }

   fetchRatings = () => {
      return fetch(this.ratingURL).then(this.parseJSON)
   }
      
   fetchRating = (id) => {
      return fetch(this.ratingURL + `/${id}`).then(this.parseJSON)
   }
   
   postRating = (meditationId) => {
      return fetch(this.ratingURL, {
         method: "POST",
         headers: this.headers,
         body: JSON.stringify({meditation_id: meditationId }) // add other attributes
      }).then(this.parseJSON)
   }
   
   deleteRating = (id) => {
      return fetch(this.ratingURL + `/${id}`, {
         method: "DELETE", 
         headers: this.headers 
      }).then(this.parseJSON)
   }
}
