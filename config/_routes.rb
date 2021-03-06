Rails.application.routes.draw do
  get 'categorys/index'

  get 'users/index'
  get '/category/:id', to: 'categorys#chitiet'
  get '/edit/:id', to: 'categorys#edit'
  delete '/delete/:id', to: 'categorys#delete'
  post '/update/:id', to: 'categorys#update'
  post '/new', to: 'categorys#new'

  # List posts of a user
  post '/users_posts', to: 'users#users_posts'
  get '/users_posts', to: 'users#users_posts'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
 post '/users_posts', to: 'users#users_posts'
  get '/users_posts', to: 'users#users_posts'
  # You can have the root of your site routed with "root"
  root 'users#index'
  resources :posts do
      resources :commands
    end

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
