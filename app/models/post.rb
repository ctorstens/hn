class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :class_name => "Post", :foreign_key => "post_id"
  has_many :votes

  def post_value
    post_value = 0

    Post.find(self.id).votes.each do |vote|
      post_value += vote.value
    end

    post_value
  end
end
