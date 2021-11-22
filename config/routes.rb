Rails.application.routes.draw do
  # get root (/) 時にここに遷移する設定
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end