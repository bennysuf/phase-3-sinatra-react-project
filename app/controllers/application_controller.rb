class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  # USER 
  get "/login" do
    user = User.all
    user.to_json
  end

  post "/login/new-user" do #work
    user = User.create(
      username: params[:username],
      password: params[:password]
    )
    user.to_json
  end

  # patch "/edit-user/:id" do
  #   user = User.find(params[:id])
  #   user.update(
  #     username: params[:username]
  #   )
  #   user.to_json
  # end

  # delete "/edit-user/:id" do 
  #   user = User.find(params[:id])
  #   post = Post.find_by(user_id: params[:id])
  #   comment = Comment.find_by(user_id: params[:id])
  #   user.destroy
  #   post.destroy
  #   comment.destroy
  #   user.to_json
  #   post.to_json
  #   comment.to_json
  # end

  get "/user/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  # POST
  get "/home" do
    post = Post.all.order("created_at DESC")
    post.to_json
  end

  get "/posts/:id" do
    self_post = Post.find_by(user_id: params[:id])
    # self_post.posts.all
    self_post.to_json
  end


  post "/posts" do 
    post = Post.create(
      user_id: params[:user_id],
      body: params[:body]
    )
    post.to_json
  end

#   delete "/posts/delete/:id" do
#     post = Post.find(params[:id])
#     post.destroy
#     post.to_json
# end

  # COMMENT

  # CURRENT USER
  patch "/current-user/:id" do
    user = User.find(params[:id])
    current = CurrentUser.userCheck(user)
    user.to_json
    current.to_json
  end

  get "/current-user" do 
    user = CurrentUser.all
    user.to_json
  end

  # delete "/current-user" do 
  #   user = CurrentUser.all.destroy
  #   user.to_json
  # end



end
