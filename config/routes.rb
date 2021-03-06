Rails.application.routes.draw do

	root 'pages#home'
  get 'pages/about', as: 'about'
  get 'articles/new'
	resources :articles

	get 'signup', to: 'users#new'
	resources :users, except: [:new]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

	resources :categories, except: [:destroy]

end
