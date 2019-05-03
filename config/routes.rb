Rails.application.routes.draw do
  match '*path' => 'examinees#create', via: :options
  root to: 'statics#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :examinees
end
