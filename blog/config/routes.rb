Rails.application.routes.draw do
  get 'aboutus/diaa'
 get 'aboutus/dalia'
 get 'aboutus/amir'
 get 'aboutus/maggie'
 get 'aboutus/youmna'

 get 'aboutus/abdulreheem'
 get 'aboutus/zamzamy'
 resources :categories
 get 'categories/show'



  get 'static/sorted_articles'
  get 'cookies/show'
  get 'aboutus/intro'
resources :carrierwave_images
get 'users/edit'
  get 'carrierwave_images/:id/edit' ,  to: 'carrierwave_images#edit'
  post 'carrierwave_images/:id/edit' , to: 'carrierwave_images#edit'
  patch 'carrierwave_images/:id/edit', to:'carrierwave_images#edit'

  get 'signup/show'
  get 'signup/login'
  post 'signup' => 'signup#signup'
    get 'signup'  => 'users#new'
      get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'users/edit'
  get 'users/edit/:id', to: 'users#edit'
  post 'users/edit/:id', to: 'users#edit'
  patch 'users/edit/:id', to:'users#edit'
  get 'users/edit'
  get 'users/edit/:id', to: 'users#edit'
  post 'users/edit/:id', to: 'users#edit'
  patch 'users/edit/:id', to:'users#edit'
  get 'users/update'
  get 'users/update/:id', to: 'users#update'
  post 'users/update/:id', to: 'users#update'
  patch 'users/update/:id', to:'users#update'

  get 'articles/indexnouser'
  get 'articles/shownouser'
  get 'articles/:id', to:'articles#shownouser'
  get 'aboutus/aboutusnouser'
  get 'articles/edit'
  get 'users/:user_id/articles/:article_id/edit', to: 'articles#edit'
    post 'users/:user_id/articles/:article_id/edit', to: 'articles#edit'
        patch 'users/:user_id/articles/:article_id/edit', to: 'articles#edit'

  

    root 'cookies#show'
    


resources :users do
  get 'aboutus/intro'
  get 'aboutus/maggie'
   get 'aboutus/youmna'
    get 'aboutus/zamzamy'
     get 'aboutus/amir'
      get 'aboutus/diaa'
       get 'aboutus/dalia'
        get 'aboutus/abdulreheem'
        get 'articles/sortedarticles'
  end

resources :users do
  resources :articles do
    resources :comments
  end 
end
resources :articles do
    resources :comments
  end 

  #resources :root do

  
 
  get "/:page" => "static#show"
  #get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 #root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
