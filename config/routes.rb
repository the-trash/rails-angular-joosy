RailsAngularJoosy::Application.routes.draw do
  root 'posts#index'

  resources :posts
  resources :angular
  resources :joosy

  # Examples

  #   get 'products/:id' => 'catalog#view'
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  #   resources :products

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

  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end