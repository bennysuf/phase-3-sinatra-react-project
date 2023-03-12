class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # USER 
  get "/login" do
    user = User.all
    user.to_json
  end

  post "/login/new-user" do 
    user = User.create(
      username: params[:username],
      password: params[:password]
    )
    user.to_json
  end

  patch "/edit-user/:id" do
    user = User.find(params[:id])
    user.update(
      username: params[:username]
    )
    user.to_json
  end

  delete "/edit-user/:id" do 
    user = User.find(params[:id])
    check = Post.checkPosts(user.posts.all)
    user.destroy.to_json
    check.to_json
  end

  get "/user/:id" do
    user = User.find(params[:id])
    user.to_json(only: [:username])
  end

  # POST
  get "/home" do
    post = Post.all.order("created_at DESC")
    post.to_json
  end

  post "/posts" do 
    post = Post.create(
      user_id: params[:user_id],
      body: params[:body]
    )
    post.to_json
  end

  # CURRENT USER
  patch "/current-user/:id" do
    user = User.find(params[:id])
    current = CurrentUser.userCheck(user)
    user.to_json
    current.to_json
  end

  get "/current-user" do 
    current = CurrentUser.first
    user = User.find(current.user_id)
    user.to_json(include: [:posts])
  end

  delete "/current-user" do 
    user = CurrentUser.first
    user.destroy
    user.to_json
  end



end
