Rails.application.routes.draw do
resources :list

  root "todolist#index"
 
 #get "todolist" => "todolist#index"

end
