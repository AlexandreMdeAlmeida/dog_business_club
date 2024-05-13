Rails.application.routes.draw do
  devise_for :users

  resources :countries do
    resources :cities
  end

  resources :cities do
    resources :activities
    resources :professional_courses
    resources :pet_owners
    resources :pet_professionals
  end

  resources :activities
  resources :professional_courses
  resources :pet_owners
  resources :pet_professionals

  resources :services

  # Additional routes for specific actions if needed
  
  root to: "pages#home"
end
