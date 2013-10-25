Vsco::Application.routes.draw do
  # IMAGES
  root to: 'images#home'

  get 'images' => 'images#index'
  get 'images/new' => 'images#new' #shows form to add newbies MUST BE put before SHOW
  get 'images/:id' => 'images#show'

  post 'images' => 'images#create' #creating new image- yay!
  delete 'images/:id' => 'images#destroy'

  # USERS
  get 'users' => 'users#index'
  get 'users/new' => 'users#new' #shows form to add newbies MUST BE put before SHOW
  get 'users/:id' => 'users#show'

  post 'users' => 'users#create' #creating new user- yay!
  delete 'users/:id' => 'users#destroy'

   # AUTHENTICATIONS
  # get 'authentications' => 'authentications#index'
  get 'authentications/new' => 'authentications#new' #shows form to add newbies MUST BE put before SHOW
  # get 'authentications/:id' => 'authentications#show'

  post 'authentications' => 'authentications#create' #creating new user- yay!
  # delete 'users/:id' => 'users#destroy'
end
