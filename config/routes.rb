Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :posts do
  	member do
  		get "like", to: "posts#upvote"
  		get "like", to: "posts#downvote"
  	end
  	resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
