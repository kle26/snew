Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :prodottos do
    member do
      post :create_review
    end
  end
  get 'home/index'
  root 'home#index'
  get 'home/regolamento'
  get 'home/descrizione'
  get 'home/contatti'
  get 'home/viso'
  get 'home/corpo'
  get 'home/capelli'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
