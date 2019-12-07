Rails.application.routes.draw do
  resources :profiles do
  	resources :todos	
  end
  devise_for :users
 	resources :todos
  get 'search/:action' => 'searches#:action'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
