def partial(template, locals = {})
  erb(template, :layout => false, :locals => locals)
end