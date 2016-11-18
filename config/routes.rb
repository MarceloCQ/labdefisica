Rails.application.routes.draw do
  # Users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'

  }

  devise_scope :user do
    authenticated :user do
      root 'users/registrations#check_role', as: :authenticated_root
    end
    root to: "users/sessions#new"
  end

  get 'pruebas', to: 'users#prueba', as: :prueba
  # Instructors
  #get 'instructor/home', to: 'instructors#home', as: :instructors_home_path

  # Admin
  scope "/admin" do
    resources :users
  end
  get 'admin/home', to: 'admin#home', as: :admin_home_path
  get 'user/home', to: 'user#home', as: :user_home_path

  # Groups
  resources :groups do
    resources :practices
    get 'practices/grades/:id', to: 'practices#grades', as: :practice_grade
    patch 'practices/grades/:id', to: 'practices#register_grades', as: :register_grades
  end
  resources :practices, only: [:index]

  # Timetables
  resources :timetables

  # Alumni
  get 'student/home', to: 'alumni#home', as: :alumni_home_path
  patch 'student/register_group/:id', to: 'alumni#register_group', as: :student_registration
end
