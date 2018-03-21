Rails.application.routes.draw do

  # defines the root url map
  # It means when user hits, rooturl/ of my site.
  # The DemoController's index function is called.
  # Khewl!
  root 'demo#index'
  
  # default route
  # default route may go away in future version of Rails
  get ':controller(/:action(/:id))'

  get "demo/index"
  # get "demo/hello"
  get "demo/other_hello"
  get "demo/lynda"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
