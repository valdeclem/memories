Rails.application.routes.draw do
  resources :memories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'static#home'

  get 'memories' => 'memories#index'
end
