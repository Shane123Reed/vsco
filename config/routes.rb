Vsco::Application.routes.draw do
  root to: 'images#home'

  get 'images' => 'images#index'
  get 'images/new' => 'images#new' #shows form to add newbies MUST BE put before SHOW
  get 'images/:id' => 'images#show'

  post 'images' => 'images#create' #creating new language- yay!
  delete 'images/:id' => 'images#destroy'
end
