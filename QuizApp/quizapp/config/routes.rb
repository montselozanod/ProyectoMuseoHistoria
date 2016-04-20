Rails.application.routes.draw do

  resources :preguntas

  resources :pregunta

  get 'home/index'

  get 'admin/index'

  get 'quiz/index'

  devise_for :admins
  devise_for :users
  resources :museos
  resources :exposicions
  resources :salas
  resources :quiz
  resources :preguntas

  resource :museos do
    get 'indexquiz'
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get 'user_root', to: redirect('quiz'), as: :user_root
  get 'admin_root', to: redirect('dashboard'), as: :admin_root

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'dashboard' => 'admin#index'
  get 'quiz' => 'quiz#index'
  
  get 'dashboard/museos', to: 'museos#index', :as => 'museo_index'
  
  get 'dashboard/museos/new', to: 'museos#new', :as => 'museo_new'
  get 'dashboard/museos/:id', to: 'museos#show', :as => 'museo_show'
  get 'dashboard/museos/:id/edit', to: 'museos#edit', :as => 'museo_edit'
  delete 'dashboard/museos/:id', to: 'museos#destroy', :as => 'museo_destroy'
  
  get 'dashboard/museos/:museoid/exposicions/new/', to: 'exposicions#new', :as => 'exposicion_new'
  get 'dashboard/museos/:museoid/exposicions/:id', to: 'exposicions#show', :as => 'exposicion_show'
  get 'dashboard/museos/:museoid/exposicions/:id/edit', to: 'exposicions#edit', :as => 'exposicion_edit'
  delete 'dashboard/exposicions/:id', to: 'exposicions#destroy', :as => 'exposicion_destroy'
  
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/new', to: 'salas#new', :as => 'sala_new'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:id', to: 'salas#show', :as => 'sala_show'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:id/edit', to: 'salas#edit', :as => 'sala_edit'
  delete 'salas/:id', to: 'salas#destroy', :as => 'sala_destroy'
  
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas', to: 'preguntas#index', :as => 'pregunta_index'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/new', to: 'preguntas#new', :as => 'pregunta_new'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:id', to: 'preguntas#show', :as => 'pregunta_show'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:id/edit', to: 'preguntas#edit', :as => 'pregunta_edit'
  delete 'preguntas/:id', to: 'preguntas#destroy', :as => 'pregunta_destroy'
  
  get 'quiz/salas/:id', to: 'salas#show', :as => 'quizshow'
  get 'quiz/museos/:id', to: 'museos#indexquiz', :as => 'indexquiz'
  get 'quiz/exposicions/:id', to: 'exposicions#salasquiz', :as => 'salasquiz'

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
