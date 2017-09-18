Rails.application.routes.draw do
  devise_for :users
	root 'bios#index'
	resources :bios do
	resources :photos

	
end
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
