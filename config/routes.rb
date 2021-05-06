Rails.application.routes.draw do
  resources :pets_lists
  root 'pets#index'
end
