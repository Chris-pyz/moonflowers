Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :actions do
    resources :wastes
    resources :likes, only: [:update, :edit, :show]
  end
end
