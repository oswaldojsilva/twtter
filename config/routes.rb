Rails.application.routes.draw do
  
  devise_for :users
  root 'pages#index'
  
  get 'pages/home' => 'pages#home'
  get 'pages/profile' => 'pages#profile'
  get 'pages/explore' => 'pages#explore'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
