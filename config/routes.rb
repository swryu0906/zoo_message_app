Rails.application.routes.draw do

  root 'users#index'

  # basic CRUD routes for users
  get '/users(.:format)' => 'users#index', as: 'users'
  post '/users(.:format)' => 'users#create'
  get '/users/new.(:format)' => 'users#new', as: 'new_user'
  get '/users/:id/edit(.:format)' => 'users#edit', as: 'edit_user'
  get '/users/:id(.:format)' => 'users#show', as: 'user'
  patch '/users/:id(.:format)' => 'users#update'
  put '/users/:id(.:format)' => 'users#update'
  delete '/users/:id(.:format)' => 'users#destroy'

  # get '/posts(.:format)' => 'posts#index', as: 'posts'
  # post '/posts(.:format)' => 'posts#create'
  # get '/posts/new(.:format)' => 'posts#new', as: 'new_post'
  # get '/posts/:id/edit(.:format)' => 'posts#edit', as: 'edit_post'
  # get '/posts/:id(.:format)' => 'posts#show', as: 'post'
  # patch '/posts/:id(.:format)' => 'posts#update'
  # put '/posts/:id(.:format)' => 'posts#update'
  # delete '/posts/:id(.:format)' => 'posts#destroy'


  #  post '/posts/:post_id/comments(.:format)' => 'comments#create', as: 'post_comments'



  resources :posts do
    resources :comments
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
