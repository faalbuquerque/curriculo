Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'main#index'

  resources :dashboards, only: [:index]

  resources :personal_infos, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  resources :academics, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  resources :courses, only: [:index, :new, :create, :show, :edit, :update, :destroy]

end
