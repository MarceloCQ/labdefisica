Rails.application.routes.draw do
  # Users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',

  }
  
  devise_scope :user do
    root to: "users/sessions#new"
  end

  # Instructors
  get 'instructor/home', to: 'instructors#home', as: :instructors_home_path

  # Admin
  scope "/admin" do
    resources :users
  end
  get 'admin/home', to: 'admin#home', as: :admin_home_path  
  get 'user/home', to: 'user#home', as: :user_home_path

  # Groups 
  resources :groups

  # Timetables
  resources :timetables
  
  # Practices
  resources :groups 
  
  # Alumni
  get 'student/home', to: 'alumni#home', as: :alumni_home_path
  patch 'student/register_group/:id', to: 'alumni#register_group', as: :student_registration
end
