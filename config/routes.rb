Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookers
  post 'bookers' => 'bookers#create'
  get '/bookers/new' => 'bookers#new'
  get 'bookers' => 'bookers'
  get 'bookers/:id' => 'bookers#show', as: 'books'
  get 'bookers/:id/edit' => 'bookers#edit', as: 'edit_books'
  patch 'bookers/:id' => 'bookers#update', as: 'update_books'
  delete 'bookers/:id' => 'bookers#destroy', as: 'destroy_books'
end
