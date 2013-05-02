# Schlacker News
---

## ToDo

#### Requirements
1.- login/auth...
  - hide / disable commentability unless authorized (logged in)

2. Implement votes (AJAX)
  X design/modify schema
  X update migrations/database
  X update models + create vote model
    X post model: vote count method =>

    def post_value
      post_value = 0

      Post.find(self.id).votes.each do |vote|
        post_value += vote.value
      end

      post_value
    end
    


  - update seed file with votes
  X on each post adding up & down arrows to vote
    
    <!-- <p><%= item.post_value %></p> -->


  - When someone clicks an up vote button:
     - Vote.create(value: 1, post_id: $(this).parent.find('.comment').attr('id'), user_id: session[:user_id])
     - AJAX stuff


  - Sort posts/comments by votes




#### Someday / Maybe
- admins can up vote as much as they'd like. as much. as they'd like.
- author_id instead of user_id on post
- ability to comment on comment (either directly, or go to comment link to submit)
- pagination of some sort
- Tron Theme (easter egg?)
- error handling