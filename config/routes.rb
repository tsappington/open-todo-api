Rails.application.routes.draw do

  # resources :users, only: [:new, :create]
  namespace :api, defaults: { format: :json } do
		mount_devise_token_auth_for 'User', at: 'auth'
		# resources :auth

    resources :users do
      resources :lists
    end

    resources :lists, only: [] do
      resources :items, only: [:create]
    end

    resources :items, only: [:update, :destroy]
  end

end
