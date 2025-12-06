Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Project lined up for Projects
  #get   "products", to: "products#index"
  #post  "products", to: "products#create"
  #get   "products/:id", to: "products#show"
  #patch "products/:id", to: "products#update"
  #delete "products/:id", to: "products#destroy"

    # products 		  GET    /products(.:format)		      products#index
    #               POST   /products(.:format)		      products#create
    # new_product 	GET    /products/new(.:format)		  products#new
    # edit_product 	GET    /products/:id/edit(.:format)	products#edit
    # product 		  GET    /products/:id(.:format)		  products#show
    #               PATCH  /products/:id(.:format)		  products#update
    #               PUT    /products/:id(.:format)		  products#update
    #               DELETE /products/:id(.:format)		  products#destroy


  resources :products

  # Project lined up for Blog
  get   "blog", to: "blog#home"
  get   "blog/about", to: "blog#about"



  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "welcome#hello"
end
