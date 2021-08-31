Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/event/', to: 'activities#event'
  resources :users
  resources :activities do
    resources :wastes
    resources :likes, only: [:create]
  end

end
