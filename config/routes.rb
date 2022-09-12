Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :devices, only: [:index, :create, :show]
    end
  end
  root "devices#index"
end
