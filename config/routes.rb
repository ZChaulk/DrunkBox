Rails.application.routes.draw do
  get 'game/pkmon'
  post 'game/pkmon'
  post 'game/new'

  resources :game

  get 'welcome/index'
  get 'welcome/game'
  post 'welcome/game'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
