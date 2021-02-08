// run file, kicks off scripts

const api = new API()

api.fetchMeditations()
.then(data => {
   data.forEach(meditation => new Meditation(meditation))
})

api.fetchComments() 
.then(comments => {
   comments.forEach(comment => new Comment(comment))
})

