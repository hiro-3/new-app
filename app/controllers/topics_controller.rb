class TopicsController < ApplicationController
 
    
    def index
    @topics = Topic.all.includes(:favorite_users)
    end 
    
    def new
     @topics = Topic.new
    end 
   
   
    def create
     #binding.pry
     @topic = current_user.topics.new(topic_params)
       if @topic.save
          redirect_to new_topic_path, success:'成功'
       else
          flash.now[:danger] = '失敗'
          render :new
       end  
    end 
     
    def edit
     @topics = Topic.find_by(params[:id])
    end 
    
    def update
     @topics = Topic.find_by(params[:id])
     @topics.update(topic_params)
     redirect_to topics_path, success:'変更しました'
    end  
     
   def destroy
    @topics = Topic.find_by(params[:id])
    @topics.destroy
     redirect_to topics_path, success:'成功'
   end
   
    private
       def topic_params 
        params.require(:topic).permit(:image, :description)
       end
end     
   
   
   
   
    
    
     
 
     
