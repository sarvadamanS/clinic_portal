Rails.application.routes.draw do
  root "sessions#new"

  # Using Devise for authentication
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  # Custom routes for login/logout (for Devise or manual session management)
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'  # Correct DELETE method

  resources :patients
  resources :sessions, only: [:new, :create, :destroy]

  # Receptionist and Doctor routes
  resources :receptionists, only: [:index]

  resources :doctors do
    collection do
      get 'dashboard', to: 'doctors#index'  # This line is now inside the collection block
    end
  end

  get '/receptionist_dashboard', to: 'receptionists#index', as: 'receptionist_dashboard'
  get '/doctors_dashboard', to: 'doctors#index', as: 'doctor_dashboard'
end
