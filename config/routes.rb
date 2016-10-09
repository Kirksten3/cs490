Rails.application.routes.draw do
  resources :longboards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'longboards#index'
end
