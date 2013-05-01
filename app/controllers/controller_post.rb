get '/post/:id' do
  @post = Post.find(params[:id])
  @comments = @post.comments
  erb :post
end

# update posts
#delete post
#create post