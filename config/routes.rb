Rails.application.routes.draw do
  resources :channels do 
    resources :discussions do
      resources :replies
    end
  end
  devise_for :users
  root 'channels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
