Rails.application.routes.draw do

  root 'users#index'

  get '/signup(.:format)' => 'users#new'
  get '/login(.:format)' => 'sessions#new', as: 'login'
  post '/login(.:format)' => 'sessions#create'
  delete '/logout(.:format)' => 'sessions#destroy', as: 'logout'

  # basic CRUD routes for users
  get '/users(.:format)' => 'users#index', as: 'users'
  post '/users(.:format)' => 'users#create'
  get '/users/new.(:format)' => 'users#new', as: 'new_user'
  get '/users/:id/edit(.:format)' => 'users#edit', as: 'edit_user'
  get '/users/:id(.:format)' => 'users#show', as: 'user'
  patch '/users/:id(.:format)' => 'users#update'
  put '/users/:id(.:format)' => 'users#update'
  delete '/users/:id(.:format)' => 'users#destroy'

  # basic CRUD routes for posts
  get '/posts(.:format)' => 'posts#index', as: 'posts'
  post '/posts(.:format)' => 'posts#create'
  get '/posts/new(.:format)' => 'posts#new', as: 'new_post'
  get '/posts/:id/edit(.:format)' => 'posts#edit', as: 'edit_post'
  get '/posts/:id(.:format)' => 'posts#show', as: 'post'
  patch '/posts/:id(.:format)' => 'posts#update'
  put '/posts/:id(.:format)' => 'posts#update'
  delete '/posts/:id(.:format)' => 'posts#destroy'

  # create routes for comments
  post '/posts/:post_id/comments(.:format)' => 'comments#create', as: 'post_comments'

end
