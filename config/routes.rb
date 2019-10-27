Rails.application.routes.draw do
  resources :infections
  resources :animals
  resources :diseases
  resources :owners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
