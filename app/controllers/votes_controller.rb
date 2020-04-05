class VotesController < ApplicationController
  
  def new
    @votes = Vote.new
  end
  
   def create
     #binding.pry
    @votes = current_user.votes.new(vote_params)
    if @votes.save
     redirect_to topics_index_path, success: "コメントをしました"
    else
     flash.now[:danger] = "コメントできませんでした"
      render :new
    end
   end 
   
   def edit
    @votes = Comment.find(params[:id])
   end 
   def update
     @votes = Comment.find(params[:id])
     @votes.update(votes_params)
     redirect_to topics_path, success: "変更をしました"
   end 
    
    private
      def vote_params
       params.require(:vote).permit(:description, :user_id, :topic_id )
      end 
end 