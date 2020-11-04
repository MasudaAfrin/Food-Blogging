Rails.application.routes.draw do

  get 'comments/create'
  get 'comments/destroy'
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root 'display#index', as: 'display_index'
  resources :blogs do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
