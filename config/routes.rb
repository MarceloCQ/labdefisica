Rails.application.routes.draw do
  # Users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'

  }

  devise_scope :user do
    authenticated :user do
      root 'users/sessions#check_role', as: :authenticated_root
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

  # Courses
  resources :courses

  # Teachers
  resources :teachers

  # Alumni
  get 'student/home', to: 'alumni#home', as: :alumni_home_path
  get 'student/grades', to: 'alumni#grades', as: :alumni_grades
  get 'student/get_teachers', to: 'alumni#get_teachers'
  put 'student/update', to: 'alumni#update'
  patch 'student/register_group/:id', to: 'alumni#register_group', as: :student_registration

  # Delete students
  delete 'restart', to: 'admin#delete_students', as: :restart
  
  # Groups
  get 'groups', to: 'groups#index', as: :groups_path
  
end
