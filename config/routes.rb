Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'salons/show'

  get 'salons/edit'

  get 'appointments/index'

  get 'appointments/new'

  get 'appointments/show'

  get 'appointments/edit'

  get 'appointments/delete'

  get 'reviews/new'

  get 'reviews/edit'

  get 'reviews/delete'

  get 'appointments/new'

  get 'appointments/show'

  get 'appointments/edit'

  get 'appointments/delete'

  get 'categories/show'

  get 'categories/new'

  get 'services/new'

  get 'services/delete'

  get 'salons/show'

  get 'salons/edit'

  get 'technicians/index'

  get 'technicians/show'

  get 'technicians/new' => 'technicians#new', as: :new_technician
  post '/' => 'technicians#create'

  get 'technicians/edit'

  get 'technicians/delete'

  get 'users/new' => 'users#new', as: :new_user
  post 'users/' => 'users#create'

  get 'users/index'

  get 'users/:id' => 'users#show', as: :user

  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy'

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session
  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session



end
