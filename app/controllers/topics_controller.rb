class TopicsController < ApplicationController
   def index
    @topic = Topic.all
   end
  
  def new
    @topic = Topic.new
  end

  def create
    @topic = current_user.topics.new(topic_params)
    
      respond_to do |format|
    if Topic.create_topics_by(topic_params)
      format.html { redirect_to topics_path, notice: '成功' }
      format.json { render :show, status: :created, location: @topic}
    else
      format.html { render :new }
      format.json { render json: @topic.errors, status: :unprocessable_entity }
    end
  end

　   private
　    def topic_params
         params.require(:topic).params({image: []})
  　   end
  　 end   
end