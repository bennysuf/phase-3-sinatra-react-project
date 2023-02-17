class User < ActiveRecord::Base 
    has_many :posts
    belongs_to :current_user
end 