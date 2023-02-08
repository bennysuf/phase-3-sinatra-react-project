class User < ActiveRecord::Base 
    has_many :posts
    has_many :comments, through: :posts
    belongs_to :current_user
end 