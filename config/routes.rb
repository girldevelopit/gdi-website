Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: 'home#index'

  # Example of regular route:
  resources :chapters, only: [:index, :show]

  get 'curriculum', to: redirect('materials')

  resources :materials, only: [:index, :show]
  get '/materials/:slug' => 'materials#show', as: :course

  resources :meetups, param: :slug, only: [:show]

  scope module: 'home' do
    get 'about'
    get 'code-of-conduct'
    get 'codeofconduct', to: redirect('code-of-conduct')
    get 'faq'
    get 'get-involved'
    get 'jobs'
    get 'supporters'
    get 'sponsors', to: redirect('supporters')

    # Donation page
    get 'donate'
    get 'summit'
  end

  # Errors (must be last rule)
  get '*any', via: :all, to: 'errors#not_found'
end
