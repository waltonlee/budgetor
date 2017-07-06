Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # devise_scope :user do
  #   post 'registrations' => 'registrations#create', :as => 'register'
  #   post 'sessions' => 'sessions#create', :as => 'login'
  #   delete 'sessions' => 'sessions#destroy', :as => 'logout'
  # end
  resources :users, only: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
