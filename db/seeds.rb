
# def create_users(num)
#   num.times do 
#     User.create(name: Faker::Name.name, email: Faker::Internet.email, password:"password")
#   end
# end
# create_users(100)

# def create_posts(num)
#   users = User.all
#   num.times do
#     Post.create(title: Faker::Company.bs, body: Faker::Lorem.paragraphs.join("\n"), user: users.sample)
#   end
# end
# create_posts(200)

# def create_comments(num)
#   users = User.all
#   num.times do
#     post = Post.first(:order => "RANDOM()")
#     comment = Post.create(title: Faker::Company.bs, body: Faker::Lorem.paragraphs.join("\n"), user: users.sample)
#     post.comments << comment
#   end
# end
# create_comments(1000)

def create_votes(num)
  num.times do
    the_user_id = User.find(rand(User.count) + 1).id
    the_post_id = Post.find(rand(Post.count) + 1).id
    
    vote = Vote.where(:value => [-1,1,1].sample, :user_id => the_user_id, :post_id => the_post_id)
    unless vote
      Vote.create(:value => [-1,1,1].sample, :user_id => the_user_id, :post_id => the_post_id)
    end
  end
end
create_votes(7000)