class Post < ActiveRecord::Base
    validates :name, presence: true
    validates :content, presence: true 

    has_many :post_tags
    belongs_to :user
    has_many :tags, through: :post_tags
    
  
end
