Rails.application.routes.draw do
  
  get '/' => 'products#home'
  
  get '/all_products' => 'products#all_products'
  get '/guitar' => 'products#guitar'
  get '/drum' => 'products#drum'
  get '/keyboard' => 'products#keyboard'
  
  get '/index' => 'products#index'
  
  get '/products/new' => 'products#new'
  post 'products' => 'products#create'

  get '/products/:id' => 'products#show'

  get 'products/:id/edit' => 'products#edit'
  patch 'products/:id' => 'products#update'

end
