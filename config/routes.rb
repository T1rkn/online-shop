Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :devices, only: [:index, :create, :show]
      resources :brands, only: [:index, :create, :show]
      resources :types, only: [:index, :create, :show]
      resources :users, only: [:index, :create, :show]
    end
  end
  root "main_page#index"
end
