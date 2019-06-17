Rails.application.routes.draw do
  resources :processos
  resources :ingredientes
  resources :produtos
  resources :engenharias do
    member do
      post 'produzir'
    end
  end
  devise_for :usuarios

  root 'home#index'
end
