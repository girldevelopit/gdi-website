Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: "home#index"

  # Example of regular route:
  resources :chapters, :materials, only: [:index, :show]
  match '/meetups/:slug' => 'meetups#show', via: :get

  get '/materials/:slug' => 'materials#show', as: :course

  get 'about', to: 'home#about'
  get 'code-of-conduct', to: 'home#code-of-conduct'
  get 'codeofconduct', to: redirect('code-of-conduct')
  get 'materials', to: 'materials#index'
  get 'curriculum', to: redirect('materials')
  get 'sponsors', to: 'home#sponsors'
  # Donation page
  get 'donate', to:'home#donate'
  # Errors (must be last rule)
  get "*any", via: :all, to: "errors#404"
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
