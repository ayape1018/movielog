Rails.application.routes.draw do
  get 'tags/show'
  devise_for :users
  get 'home/index'
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'works#index'
  resources :works, only: [:index, :show] do
    get 'higher' => 'works#move_higher', as: 'higher', on: :member
  end
  resources :directors, only: [:index, :show]
  resources :tags, only: [:show]

  namespace :login do
    resource :profile, except: [:index, :show, :new]
    resources :directors, except: [:index, :show]
    resources :works, except: [:index, :show]
  end

end
