class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end
  
   def create
     #binding.pry
     @comments = current_user.comments.new(comment_params)
        if @comments.save
         redirect_to topics_path, success: "コメントをしました"
        else
         flash.now[:danger] = "コメントできませんでした"
          render :new
        end
   end 
   
   def edit
    @comments = Comment.find(params[:id])
   end 
   def update
     @comments = Comment.find(params[:id])
     @comments.update(comment_params)
     redirect_to topics_path, success: "変更をしました"
   end 
    
    private
      def comment_params
       params.require(:comment).permit(:description, :user_id, :topic_id)
      end 
end 