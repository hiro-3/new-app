class FavoritesController < ApplicationController
  
  def create
    #binding.pry
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.topic_id = params[:topic_id]
    
    if favorite.save
      redirect_to topics_path, success: '成功'
    else
      redirect_to topics_path, danger: '失敗'
    end
  end 
  
  private
   def topic_params
     params.require(:topic).permit(:user_id)
   end 
   def favorite_params
     params.require(:favorite).permit(:user_id, :topic_id, :comment)
   end
end
