get '/' do

  # @posts = Post.where("posts.post_id is NULL").select("posts.*, SUM(votes.value) as post_value").joins('INNER JOIN votes on posts.id = votes.post_id').group("posts.id").order("post_value DESC")[0..19]
  @posts = sorted(Post.where("posts.post_id is NULL"))[0..19]
  @post_of_the_week = @posts.sample 
  erb :index
end