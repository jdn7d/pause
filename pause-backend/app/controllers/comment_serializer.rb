class CommentSerializer 

   def initialize(comment_object)
      @comment = comment_object
   end

   def to_serialized_json 
      @comment.to_json(:include => {
         :meditation => {:only => [:id]}
      })
   end

end