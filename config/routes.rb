Rails.application.routes.draw do
  resources :produtos
  resources :engenharias
  devise_for :usuarios

  root 'home#index'
end
