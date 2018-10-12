Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/firstproduct' => 'products#first_product'
    get '/products' => 'products#products_all'
  end
end
