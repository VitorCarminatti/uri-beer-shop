Rails.application.routes.draw do
  devise_for :views
  resources :engenharias
  devise_for :usuarios
end
