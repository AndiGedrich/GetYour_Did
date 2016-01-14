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

  get 'appointments/:id' => 'appointments#show', as: :appointment

  get 'appointments/edit'

  get 'appointments/delete'

  get 'categories/show'

  get 'categories/index'

  get 'services/new' => 'services#new', as: :new_service
  post 'services/' => 'services#create'

  get 'services/delete'

  get 'salons/index'

  get 'salons/show'

  get 'salons/edit'

  get 'users/new_client/:user_id' => 'users#new_client', as: :new_client
  post 'users/' => 'users#create_client'

  get 'users/new_technician/:user_id' => 'users#new_technician', as: :new_technician
  post 'users/' => 'users#create_technician'

  get 'users/index'

  #fix these routes
  get 'users/:id' => 'users#show_client', as: :client

  get 'users/:id' => 'users#show_technician', as: :technician


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
