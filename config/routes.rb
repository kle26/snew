Rails.application.routes.draw do
  devise_for :users
  resources :prodottos
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
