Rails.application.routes.draw do
  root 'static#index'
  resources :mums do
    resources :cousins
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
