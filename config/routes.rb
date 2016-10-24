Rails.application.routes.draw do

  get 'articles/new'

	root 'articles#index'


	resources :articles

end
