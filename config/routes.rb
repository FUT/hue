Hue::Application.routes.draw do
  resources :texts

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, path_prefix: 'all' do
    root to: 'pages#home'
  end

  resources :checkpoints

  resources :posts

  resources :images

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :users do
    resources :profiles, shallow: true
  end

  # High voltage controller override
  match "/pages/*action" => 'pages', :as => :page, :format => false

  root to: 'pages#home'
end
