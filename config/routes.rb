Rails.application.routes.draw do

  devise_for :users
  root to: "products#index"
  
  
  get '/index' => 'products#index'

  get '/test' => 'products#test'
  
  get '/products/new' => 'products#new'
  post 'products' => 'products#create'

  get '/supplier/new' => 'products#supplier_new'
  post 'supplier' => 'products#supplier_create'

  get 'products/random' => 'products#random'
  
  get '/products/:id' => 'products#show'

  get '/supplier/:id' => 'products#supplier_show'

  get 'products/:id/edit' => 'products#edit'
  patch 'products/:id' => 'products#update'

  get 'supplier/:id/edit' => 'products#supplier_edit'
  patch 'supplier/:id' => 'products#supplier_update'

  get '/images/' => 'products#show_images'

  get '/images/first' => 'products#show_images_first'

  get '/orders/:id' => 'orders#show'

  get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'

end
