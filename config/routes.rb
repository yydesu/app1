Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root to: 'home#index'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
