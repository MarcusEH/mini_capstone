Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/products/:id' => 'products#show'
    get '/products' => 'products#index'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete 'products/:id' => 'products#destroy'

    get '/suppliers/' => 'suppliers#index'
    get '/suppliers/:id' => 'suppliers#show'
    post '/suppliers/' => 'suppliers#create'
  end
end
