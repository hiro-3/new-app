class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :image, presence: true
  
  belongs_to :user
  
  def self.create_topics_by(topic_params)
    
     return false if topic_params[:image].nil?
     
     Topic.transaction do 
       
     end
  end   
  true
end 