Rails.application.routes.draw do
 # get 'welcome/index'
  # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # get "/blog", to: "welcome#index"
 # get "/blog/:id", to: "welcome#show"

 # post "/blog", to: "welcome#create"
  root 'welcome#index'
  resources :articles
end
