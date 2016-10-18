Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :teachers
  root 'teachers#index'

  # Instructors 
  get 'instructor/home', to: 'instructors#home', as: :instructors_home_path

  # Admin
  scope "/admin" do
    resources :users
  end
  get 'admin/home', to: 'admin#home', as: :admin_home_path
  resources :groups

  get 'user/home', to: 'user#home', as: :user_home_path


  # Timetables
  resources :timetables
  # get 'groups/index', to: 'groups#index', as: :groups_index
  # get 'groups/new', to: 'groups#new', as: :new_group
  # get 'groups/edit/:id', to: 'groups#edit', as: :edit_group
  # get 'groups/show/:id', to: 'groups#show', as: :show_group

  # Alumni
  get 'student/home', to: 'alumni#home', as: :alumni_home_path
end
