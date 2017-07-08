Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "reports#new"
  resources :reports, only: [:index, :new, :create, :show]
  devise_for :users
end
