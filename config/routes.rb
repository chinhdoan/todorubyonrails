Rails.application.routes.draw do



  resources :profiles do
  	resources :todos	
  end
  devise_for :users
 	resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
