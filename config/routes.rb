Rails.application.routes.draw do
	devise_for :users
  
	root to: 'posts#index' 
	resources :posts
  
	namespace :admin do
	  root to: 'dashboard#index'
	  resources :posts
	end
  end