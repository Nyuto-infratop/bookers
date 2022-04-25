Rails.application.routes.draw do
  # get 'books' => 'books#index'
  # get 'books/:id' => 'books#show'
  # post 'books' => 'books#create'
  # get 'books/:id/edit' => 'books#edit'
  # patch 'books/:id' => 'books#update'
  # delete 'books/destroy/:id' => 'books#destroy'
  get '/' => 'homes#index', as: :root
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
