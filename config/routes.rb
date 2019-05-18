Rails.application.routes.draw do
  resources :processos
  resources :ingredientes
  resources :produtos
  resources :engenharias
  devise_for :usuarios

  root 'home#index'
end
