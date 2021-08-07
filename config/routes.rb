Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get '/books/books/index' => 'books#index'
  post '/show' => 'books#show'

  root :to => 'books#top'
end
