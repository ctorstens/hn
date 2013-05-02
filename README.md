# Schlacker News
---

## ToDo

#### Requirements
1. **login/auth…**
  - hide / disable commentability unless authorized (logged in)

2. **Implement votes (AJAX)**
  - X design/modify schema
  - X update migrations/database
  - X update models + create vote model
    - X post model
  - update seed file with votes
  - X on each post adding up & down arrows to vote
  - When someone clicks an up vote button:
    - Vote.create(value: 1, post_id: $(this).parent.find('.comment').attr('id'), user_id: session[:user_id])
    - AJAX stuff
  - Sort posts/comments by votes




#### Someday / Maybe
- admins can up vote as much as they'd like. **as much. as they'd like.**
- author_id instead of user_id on post
- ability to comment on comment (either directly, or go to comment link to submit)
- pagination of some sort
- Tron Theme (easter egg?)
- error handling

## References

- [colourlovers: San_Francisco](http://www.colourlovers.com/palette/576743/San_Francisco)
- [colourlovers: Tron Legacy 2](http://www.colourlovers.com/palette/1406402/Tron_Legacy_2)