const meditationsList = document.querySelector("#meditations-list")
const medDisplay = document.querySelector("#meditation-content-display")
const controlButtons = document.querySelector("#meditation-controls-container")
const endButton = document.querySelector("#end-button")
const pausePlayButton = document.querySelector("#pause-play-button")
const commentForm = document.querySelector("#comment-form")
const addCommentButton = document.querySelector("#add-comment-button")
const commentList = document.querySelector("#comment-list")
const bubble = document.querySelector("#breathing-bubble")

let showMeditation = {}
let currentContent = {}

class MeditationList {

   constructor(meditation, comment) {
      console.log("alksjdf")
      console.log(meditation)
      console.log(comment)


      // Show Meditation Content 
      function playMeditation(e, meditation) {
         meditationsList.style.display = "none"
         medDisplay.style.display = "block"
         controlButtons.style.display = "block"
         endButton.addEventListener('click', stopInterval) 
         pausePlayButton.addEventListener('click', pauseInterval)
         medDisplay.innerText = "Welcome"
         let i = {count: 0}
         const parsedContent = meditation.content.split("/")
         const contentTime = 3500
         showMeditation = setInterval(playContent, contentTime, parsedContent, i) 
         

         // Play Meditation 
         function playContent(parsedContent, i) {
            
            medDisplay.innerText = parsedContent[i["count"]]
            
             if (i["count"]%2 === 0) {
               expand()     
             }
             else {
               shrink() 
             }
            i["count"] +=1
            if (i["count"] > (parsedContent.length)) {
               
               meditationEnd(showMeditation, meditation)
              
            }
            
         }

         // Pause Meditation 
         function pauseInterval(e) {
            if (e.target.innerText === "Pause") {
               currentContent["count"] = i["count"]
               e.target.innerText = "Resume" 
               clearInterval(showMeditation)
            }
            else {
               i["count"] = currentContent["count"]
               e.target.innerText = "Pause" 
               showMeditation = setInterval(playContent, contentTime, parsedContent, i) 
            }
         }

         // Stop meditation with button
         function stopInterval(){
            clearInterval(showMeditation)
            meditationsList.style.display = "block"
            medDisplay.style.display = "none"
            // hide the meditation controller buttons 
         }
      }

      // Show page after meditation runs, includes new comment form and list of comments 
      function meditationEnd(showMeditation, meditation) {
         clearInterval(showMeditation)
         medDisplay.innerText = "Add Comment"
         commentForm.style.display = "block"
         addCommentButton.style.display = "block"
         controlButtons.style.display = "none"
         displayComments(meditation) 

         // Submit new comment
         commentForm.addEventListener("submit", meditation.createComment)
      
         //let comList = new commentList(meditation, meditation.comment)
    
      }

      // Display comments on Meditation show page 
      function displayComments(meditation) {
         console.log(meditation.comments)
         meditation.commentSection = document.createElement('ul')
         for (const comment of meditation.comments) {
         const li = document.createElement("li")
         meditation.commentSection.append(li)
         li.innerText = `${comment.content}`
         commentList.append(meditation.commentSection)
         }
      }

   
      // Create list of meditations as buttons
      const button = document.createElement("button")
      button.innerText = `${meditation.title} `
      
      meditationsList.appendChild(button) 
      button.addEventListener('click', function(e) {
         playMeditation(e, meditation)
      })

   

      // Create bubble 
      function expand() {
       let size = 100
         var id = setInterval(frame, 10)
       
         function frame() {
            size ++
            bubble.style.height = size + 'px'
            bubble.style.width = size + 'px'
            console.log("inc")
            clearInterval(id)
         } 
         
         }
      function shrink() {
        var id = setInterval(frame, 10)
            let size = 200
            size --
            bubble.style.height = size + 'px'
            bubble.style.width = size + 'px'
            console.log("dec")
            clearInterval(id)
      }
      
   }
}
 
