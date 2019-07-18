Rails.application.routes.draw do
  resources :discussions do
    resources :replies
  end
  resources :channels
  get 'channel/title'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
