Hue::Application.routes.draw do
  devise_for :users do
  end

  # High voltage controller override
  match "/pages/*action" => 'pages', :as => :page, :format => false

  root to: 'pages#home'
end
