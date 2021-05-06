Rails.application.routes.draw do
  resources :pets_lists
  get 'pets/index'
end
