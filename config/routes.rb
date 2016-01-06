Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'salons/index' => 'salons#index', as: :salons_index

  get 'salons/:id' => 'salons#show', as: :salon

  get 'salons/edit'

  get 'appointments/index'

  get 'appointments/new'=> 'appointments#new', as: :new_appointment
  post 'appointments/' => 'appointments#create'

  get 'appointments/show'

  get 'appointments/edit'

  get 'appointments/delete'

  get 'categories/show'

  get 'categories/new'

  get 'services/new' => 'services#new', as: :new_service
  post 'services/' => 'services#create'

  get 'services/delete'

  get 'salons/show'

  get 'salons/edit'

  get 'technicians/new' => 'technicians#new', as: :new_technician
  post 'technicians/' => 'technicians#create'

  get 'technicians/index'

  get 'technicians/:id' => 'technicians#show', as: :technician

  get 'technicians/edit'

  get 'technicians/delete'

  get 'tech_sessions/new' => 'tech_sessions#new', as: :new_tech_session
  post 'tech_sessions/new' => 'tech_sessions#create', as: :create_tech_session
  get 'tech_sessions/destroy' => 'tech_sessions#destroy', as: :destroy_tech_session

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

  get 'reviews/new'

  get 'reviews/edit'

  get 'reviews/delete'

  namespace :api do
    resources :salons, :defaults => { :format => 'json' }, only: [:index, :show]
  end

end
