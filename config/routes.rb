Rails.application.routes.draw do
  default_url_options :host => "http://localhost:3000/"
  resources :users, only: %I[index show] do
    resources :books, only: %I[show new create destroy]
  end
  resources :books, only: %I[ index]
end
