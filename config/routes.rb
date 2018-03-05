Rails.application.routes.draw do
  resources :groups
  resources :ensembles
  resources :entries
  resources :students
  root "solos#index"
  resources :solos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
