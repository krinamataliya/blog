Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #resoruces helps to create all the routes predefined to view them run rake routes
  resources :posts do
  	resources :comments
  end

  root 'posts#index'
end