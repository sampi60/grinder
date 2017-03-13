Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index, :create, :show]
    end
  end

  root 'site#index'
end
