class TopicsController < ApplicationController
   def index
    @topic = Topic.all
   end 
   
   def new
    @topic = Topic.new
   end 
   
   def create
    #binding.pry
    @topic = current_user.topics.new(topic_params)
    
     if @topic.save
        redirect_to topics_path, success:'成功'
     else
        flash.now[:danger] = '失敗'
        render :new
     end
   end  
     private
       def topic_params
        params.require(:topic).permit({image: []}, :description)
       end
end      
