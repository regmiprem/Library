Sharebook::Application.routes.draw do
  resources :roles

  resources :divisions

  resources :departments

  authenticated :user do
    root :to => 'dashboards#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :books do
    resources :reviews
  end
  resources :dashboard do
    resources :reviews
  end
  resources :dashboards
end