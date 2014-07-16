AeconomicoWeb::Application.routes.draw do

  namespace :api do
    resources :responses,format: 'json' do
      collection do
        get :random
        get :index
        get :get_all_contents_by_subchapter_id
      end
    end

  end

  resources :multimedia

  resources :contents

  resources :subchapters

  resources :chapters

  resources :categories

  resources :profiles

  root :to => "home#index"

  get 'contenido', to: "home#contenido_principal"
  get 'capitulo', to: "home#capitulo"

  get 'admin', to: 'home#admin'

  get 'content_loader', to: 'contents#partial_loader'

#routes for admin panel
  match "delete_subchapter_profile" => "home#delete_subchapter_profile", via: [:get, :post]
  match "create_subchapter_profile" => "home#create_subchapter_profile", via: [:get, :post]


  resources :home do
    collection do
      get 'profiles'
      get 'capitulos'
      get 'categorias'
      get 'contenidos'
      get 'subcapitulos'
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
