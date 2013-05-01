get '/' do
  @posts = Post.where("post_id IS NULL")
  @post_of_the_week = @posts.sample 
  erb :index
end

get '/post/:id' do
  @post = Post.find(params[:id])
  @comments = @post.comments
  erb :post
end