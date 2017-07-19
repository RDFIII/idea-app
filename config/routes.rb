Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'home#index'

  resources :ideas do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

end