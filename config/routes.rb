Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get '/index' => 'books#index'
  get 'show' => 'books#show'
  post '/show' => 'books#show'
  get 'books/show' 
  get 'top' => 'books#top'
  root :to => 'books#top'
  root :to => 'books#index'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_books'
end
