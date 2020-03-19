class TopicsController < ApplicationController
   def index
    @topics = Topic.all
   end 
   
   def new
    @topics = Topic.new
   end 
   
   def create
    #binding.prys
    #後に３枚規制をかける
    @topics = current_user.topics.new(topic_params)
    
     if @topics.save
        redirect_to topics_path, success:'成功'
     else
        flash.now[:danger] = '失敗'
        render :new
     end
   end  
 
     private
       def topic_params 
        #画像複数投稿
        params.require(:topic).permit({image: []}, :description)
       end
end      
