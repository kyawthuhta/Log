Rails.application.routes.draw do
  resources :contracts
  resources :people
  resources :machines
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
