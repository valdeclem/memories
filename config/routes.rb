Rails.application.routes.draw do
  get 'registrations/devise'

  resources :memories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'static#home'

  get '/about' => 'static#about'
  get '/contact' => 'static#contact'
  get '/perso' => 'memories#my_memories'

end
