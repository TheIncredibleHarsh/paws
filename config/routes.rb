Rails.application.routes.draw do
  resources :employees
  resources :animals
  resources :shelters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
