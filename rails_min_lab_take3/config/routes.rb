Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'articles#index'

  get 'site/index'

  get 'site/about'

  get 'site/contact'

  get 'articles/index'

  get '/articles', to: "articles#index", as:'articles'

  get '/articles/new', to: 'articles#new', as:'new_article'

  post "/articles", to: "articles#create"

  get '/articles/:id', to: 'articles#show', as:'article'

  get '/articles/:id/edit', to: 'articles#show', as: 'edit_article'
  
  post "/articles", to: "articles#create"

  # The update route
  patch "/articles/:id", to: "articles#update"

  # the destroy route
  delete "/articles/:id", to: "articles#destroy"

  get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_up", to: "users#new", as: "sign_up"

  get '/logout', to: 'sessions#destroy'

  resources :users



end
