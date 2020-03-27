class TopicsController < ApplicationController
 
  
   def index
    @topics = Topic.all.includes(:favorite_users)
   end 
   
   def new
     @topics = Topic.new
   end 
   
   3.times do 
     def create
      #binding.pry
      @topics = current_user.topics.new(topic_params)
       if @topics.save
          redirect_to new_topic_path, success:'成功'
       else
          flash.now[:danger] = '失敗'
          render :new
       end  
     end 
   end
   def destroy
    @topics = Topic.find_by(params[:id])
    @topics.destroy
     redirect_to topics_path, success:'成功'
   end
   
    private
       def topic_params 
        #画像複数投稿
        params.require(:topic).permit(:image, :description )
       end
end     
   
   
   
   
    
    
     
 
     
