class User < ActiveRecord::Base 
    has_many :chats
    has_many :messages, through: :chats
end 