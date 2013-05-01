helpers do

  def partial(template, locals = {})
    erb(template, :layout => false, :locals => locals)
  end

  def date(date)
    date.strftime("%Y/%M/%D %I:%M%p")
  end
end

