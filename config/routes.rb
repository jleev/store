Rails.application.routes.draw do

  devise_for :users
  root to: "products#index"
  
  get '/index' => 'products#index'
  
  get '/products/new' => 'products#new'
  post 'products' => 'products#create'

  get '/supplier/new' => 'products#supplier_new'
  post 'supplier' => 'products#supplier_create'

  get 'products/random' => 'products#random'
  
  get '/products/:id' => 'products#show'

  get '/supplier/:id' => 'products#supplier_show'

  get 'products/:id/edit' => 'products#edit'
  patch 'products/:id' => 'products#update'

  get '/orders/:id' => 'orders#show'

  get '/orders/new' => 'orders#new'
  post '/orders' => 'orders#create'


  get '/cart' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'

  delete '/carted_products/:id' => 'carted_products#destroy'


end
