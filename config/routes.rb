Rails.application.routes.draw do
  resources :discussions
  resources :channels
  get 'channel/title'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
