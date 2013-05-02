helpers do

  def partial(template, locals = {})
    erb(template, :layout => false, :locals => locals)
  end

  #TODO: Format date properly
  def date(date)
    date.strftime("%Y/%M/%D %I:%M%p")
  end

  def post_body
    @post.body.gsub(/\n/,"<br><br>")
  end

  def comment_body(comment)
    comment.body.gsub(/\n/,"<br><br>")
  end
end

