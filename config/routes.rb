Rails.application.routes.draw do

	root 'pages#home'
  get 'pages/about', as: 'about'
  get 'articles/new'
	resources :articles

end
