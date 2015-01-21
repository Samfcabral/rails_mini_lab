#         Prefix Verb   URI Pattern                  Controller#Action
#   sessions_new GET    /sessions/new(.:format)      sessions#new
#           root GET    /                            articles#index
#     site_index GET    /site/index(.:format)        site#index
#     site_about GET    /site/about(.:format)        site#about
#   site_contact GET    /site/contact(.:format)      site#contact
# articles_index GET    /articles/index(.:format)    articles#index
#       articles GET    /articles(.:format)          articles#index
#    new_article GET    /articles/new(.:format)      articles#new
#                POST   /articles(.:format)          articles#create
#        article GET    /articles/:id(.:format)      articles#show
#   edit_article GET    /articles/:id/edit(.:format) articles#show
#                POST   /articles(.:format)          articles#create
#                PATCH  /articles/:id(.:format)      articles#update
#                DELETE /articles/:id(.:format)      articles#destroy
#          login GET    /login(.:format)             sessions#new
#       sessions POST   /sessions(.:format)          sessions#create
#        sign_up GET    /sign_up(.:format)           users#new
#         logout GET    /logout(.:format)            sessions#destroy
#          users GET    /users(.:format)             users#index
#                POST   /users(.:format)             users#create
#       new_user GET    /users/new(.:format)         users#new
#      edit_user GET    /users/:id/edit(.:format)    users#edit
#           user GET    /users/:id(.:format)         users#show
#                PATCH  /users/:id(.:format)         users#update
#                PUT    /users/:id(.:format)         users#update
#                DELETE /users/:id(.:format)         users#destroy
  
Rails.application.routes.draw do
  root to: "sites#index"

  resources :users, except: [:new]
  get "/sign_up", to: "users#new"
  get "/profile", to: "users#profile"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/session", to: "sessions#destroy"

  resources :articles

end