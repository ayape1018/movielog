Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'works#index'
  resources :works do
    get 'higher' => 'works#move_higher', as: 'higher', on: :member
  end
  resources :directors


end
