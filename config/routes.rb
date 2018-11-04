Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create'
  namespace :api do
    get '/products/:id' => 'products#show'
    get '/products' => 'products#index'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete 'products/:id' => 'products#destroy'

    get '/suppliers/' => 'suppliers#index'
    get '/suppliers/:id' => 'suppliers#show'
    post '/suppliers/' => 'suppliers#create'
    patch '/suppliers/:id' => 'suppliers#update'
    delete 'suppliers/:id' => 'suppliers#destroy'

    post '/images/' => 'images#create'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
    post '/orders' => 'orders#create'

    get '/orders' => 'orders#index'
    get 'orders/:id' => 'orders#show'

    post '/carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'
    delete '/carted_products/:id' => 'carted_products#destroy'
  end
end
