# Schlacker News
---

## ToDo

#### Requirements
1.- login/auth...
  - hide / disable commentability unless authorized (logged in)

2. Implement votes (AJAX)
  - design/modify schema
  - update migrations/database
  - update models + create vote model
    - post model: vote count method =>

    def post_value
      post_value = 0

      Post.find(self.id).votes.each do |vote|
        post_value += vote.value
      end

      post_value
    end
    


  - update seed file with votes
  - on each post adding up & down arrows to vote
    When someone clicks an up vote button:
      Vote.create(value: 1, post_id: $(this).parent.find('#post').attr('id'), user_id: session[:user_id])




#### Someday / Maybe
- author_id instead of user_id on post
- ability to comment on comment (either directly, or go to comment link to submit)
- pagination of some sort