Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  resources :friends
  resources :organizations 
  resources :likes
  get "people" => "users#people"
  get 'followers/:id' => "friends#show"
  get 'follows/:id' => "friends#follows"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
