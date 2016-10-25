Rails.application.routes.draw do

	root 'pages#home'
  get 'pages/about', as: 'about'
  get 'articles/new'
	resources :articles

	get 'signup', to: 'users#new'
	resources :users, except: [:new]
end
