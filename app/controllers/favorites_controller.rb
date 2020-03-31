class FavoritesController < ApplicationController
  before_action :set_topic
  
  
  def create
    #binding.pry
    @favorite = Favorite.create(user_id: current_user.id, topic_id: params[:topic_id])
    @favorite = Favorite.where(topic_id: params[:topic_id])
    @topics.reload
  end  
    
  def destroy  
    @favorite = Favorite.find_by(user_id: current_user.id, topic_id: params[:topic_id])
    favorite.destroy
    @favorite = Favorite.where(topic_id: params[:topic_id])
    @tpoics.reload
  end
  
    
  private
   
   def set_topic
     @topics = Topic.find(params[:topic_id])
   end 
   
end
