Rails.application.routes.draw do
  
  get '/' => 'products#home'
  get '/all_products' => 'products#all_products'
  get '/guitar' => 'products#guitar'
  get '/drum' => 'products#drum'
  get '/keyboard' => 'products#keyboard'

end
