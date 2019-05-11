Rails.application.routes.draw do
  resources :engenharias
  devise_for :usuarios

  root 'home#index'
end
