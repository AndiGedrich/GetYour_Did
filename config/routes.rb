Rails.application.routes.draw do
  root 'static_pages/home'

  get 'static_pages/about'


  get 'salons/show'

  get 'salons/edit'

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

  get 'users/index', as: :users

  get 'users/show'

  get 'users/new' => 'users#new', as: :new_user
  post '/' => 'users#create'

  get 'users/edit'

  get 'users/delete'

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session
  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
