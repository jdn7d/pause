class API {
   
   // constructor
   constructor(port = 3000){
      this.url = `http://localhost:${port}`
   }

   // helpers
   parseJSON = response => response.json()

   headers = {"Accepts": "application/json", "Content-Type": "application/json"}

   // getters 
   get meditationURL(){
      return this.url + '/meditations'
   }
   
   get commentURL(){
      return this.url + '/comments'
   }

   // fetches

   fetchMeditations = () => {
      return fetch(this.meditationURL).then(this.parseJSON)
   }
  
   fetchMeditation = (id) => {
      return fetch(this.meditationURL + `/${id}`).then(this.parseJSON)
   }

   fetchComments = () => {
      return fetch(this.commentURL).then(this.parseJSON)
   }
      
   fetchComment = (id) => {
      return fetch(this.commentURL + `/${id}`).then(this.parseJSON)
   }
   
   postComment = (meditationId, content) => {
      return fetch(this.commentURL, {
         method: "POST",
         headers: this.headers,
         body: JSON.stringify({meditation_id: meditationId, content: content }) // add other attributes
      }).then(this.parseJSON)
   }
   
   deleteComment = (id) => {
      return fetch(this.commentURL + `/${id}`, {
         method: "DELETE", 
         headers: this.headers 
      }).then(this.parseJSON)
   }
}
