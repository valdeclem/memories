Rails.application.routes.draw do
  resources :mapgs
  get 'registrations/devise'

  resources :memories
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'static#home'

  get '/about' => 'static#about'
  get '/perso' => 'memories#my_memories'
  get '/timeline' => 'memories#tl_memories'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
