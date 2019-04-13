Rails.application.routes.draw do
  
  root 'pages#index'
  
  get 'pages/index'
  get 'pages/home' => 'pages#home'
  get 'pages/profile' => 'pages#profile'
  get 'pages/explore' => 'pages#explore'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
