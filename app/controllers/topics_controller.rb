class TopicsController < ApplicationController
 
    
    def index
     @topics = Topic.all
    end 
    
    def new
     @topics = Topic.new
    end 
   
   
    def create
     #binding.pry
       @topics = current_user.topics.new(topic_params)
      if @topics.save
         redirect_to pages_path, success: "投稿しました"
      else
         flash.now[:danger] = "失敗しました"
         render :new
      end
    end
     
    def destroy
     @topics = Topic.find(params[:id])
     @topics.destroy
     redirect_to topics_index_path, success:'成功'
    end
   
   private
    def topic_params
     params.require(:topic).permit(:description,:description1, :description2, :image, :image1, :number, :number1)
    end
    
end    
     
