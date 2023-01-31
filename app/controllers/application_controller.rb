class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # post "/login" do 
  #   user = User.create(
  #     username: params[:username],
  #     password: params[:password]
  #   )
  #   user.to_json
  # end

  # # patch "/edit-user/:id" do
  # #   user = User.find(params[:id])
  # #   user.update(
  # #     name: params[:name]
  # #   )
  # #   user.to_json
  # # end

  # delete "/edit-user/:id" do 
  #   user = User.find(params[:id])
  #   user.destroy
  #   user.to_json
  # end

  # post "chats" do 
  #   chat = Chat.create(
  #     user_id: params[:user_id],
  #     message_id: params[:message_id]
  #   )
  #   chat.to_json
  # end



end
