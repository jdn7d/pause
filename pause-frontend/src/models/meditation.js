
class Meditation {
   constructor(data) {
      // assign attributes
      this.id = data.id
      this.title = data.title
      this.duration = data.duration
      this.content = data.content
      
      this.comments = data.comments.map(comData => new Comment(comData, this))

      console.log(this.comments)
      this.list = new MeditationList(this, this.comments)
 

   }
   

   // Add new comment to Meditation 
   createComment = (event) => {
      event.preventDefault()
      const commentInput = document.querySelector("#comment-input").value
      
      api.postComment(this.id, commentInput)
      .then(comData => {
         const newCom = new Comment(comData)
         this.addCommentToMed(newCom)
         console.log(newCom)
      })
   }

   // Populate list of comments on meditation show page 
   addCommentToMed = (comment) => {
      comment.meditation = this
      this.commentSection = document.createElement('ul')
      const li = document.createElement("li")
      this.commentSection.append(li)
      li.innerText = `${comment.content}`
      commentList.append(this.commentSection)
   }

   // delete = () => {
   //    api.deleteComment(this.id)
   //    delete this
   // }

}