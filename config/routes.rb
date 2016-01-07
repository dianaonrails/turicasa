Rails.application.routes.draw do

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  
  resources :bookings

  get 'password_resets/create'

  get 'password_resets/edit'

  get 'password_resets/update'

  #get 'owner_sessions/new'

  #get 'owner_sessions/create'

  #get 'owner_sessions/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'public#home'
  get 'contacts' => 'public#contacts'
  get 'about' => 'public#about'

  resources :entries_reviews

  resources :entries do
    collection do
      get 'search'
    end
  end


  resources :owner_sessions do
    collection do
      get 'entries'
    end
  end    
  resources :owners
  resources :password_resets

  resources :client_sessions
  resources :clients

  get 'owner_login' => 'owner_sessions#new', :as => :owner_login
  post 'owner_logout' => 'owner_sessions#destroy', :as => :owner_logout

  get 'client_login' => 'client_sessions#new', :as => :client_login
  post 'client_logout' => 'client_sessions#destroy', :as => :client_logout

  resources :bookings


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
