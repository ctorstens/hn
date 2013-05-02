get '/post/:id' do
  @post = Post.find(params[:id])
  @comments = sorted(@post.comments)
  # @comments = @post.comments
  erb :post
end

# update posts
#delete post
#create post