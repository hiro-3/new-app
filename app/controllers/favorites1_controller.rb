class Favorites1Controller < ApplicationController
  
  
  def index
    @favorites1 = current_user.favorite1_topics
  end 

  def new
    @favorites1 = Favorite.new
  end  
  
  def create
    #binding.pry
    favorite1 = Favorite.new
    favorite1.user_id = current_user.id
    favorite1.topic_id = params[:topic_id]
    
    if favorite1.save
      redirect_to topics_path, success: '成功'
    else
      redirect_to topics_path, danger: '失敗'
    end
  end 
  
  private
   def topic_params
     params.require(:topic).permit(:user_id)
   end 
   def favorite1_params
     params.require(:favorite).permit(:user_id, :topic_id, :comment)
   end
end
