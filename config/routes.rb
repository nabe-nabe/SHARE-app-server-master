Rails.application.routes.draw do
  resources :pictures, only: :create
end
