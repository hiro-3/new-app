class Favorites2Controller < ApplicationController
  
  
  def index
    @favorites2 = current_user.favorite2_topics
  end 

  def new
    @favorites2 = Favorite.new
  end  
  
  def create
    #binding.pry
    favorite2 = Favorite.new
    favorite2.user_id = current_user.id
    favorite2.topic_id = params[:topic_id]
    
    if favorite2.save
      redirect_to topics_path, success: '成功'
    else
      redirect_to topics_path, danger: '失敗'
    end
  end 
  
  private
   def topic_params
     params.require(:topic).permit(:user_id)
   end 
   def favorite2_params
     params.require(:favorite).permit(:user_id, :topic_id, :comment)
   end
end

