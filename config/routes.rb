Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #resoruces helps to create all the routes predefined to view them run rake routes
  resources :users do
  resources :posts 
  	resources :comments
  end

  get '/posts/:id/:title' , to:'posts#getByTitle'
  root 'posts#index'
end