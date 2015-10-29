Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  #Routes to CREATE photos
  get("/photos/new", { :controller => "photos", :action => "new_form"})

  get("/create_photo", { :controller => "photos", :action => "create_row"})

  #routes to DELETE photos
  get("/photos/delete_photo", { :controller => "photos", :action => "delete_photo"})

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

end
