Rails.application.routes.draw do

  get 'home/index'

  get 'admin/index'
  get 'admins/user_results'
  get 'quiz/index'

  devise_for :admins
  devise_for :users
  resources :museos
  resources :exposicions
  resources :salas
  resources :quiz
  resources :preguntas
  #resources :pregunta
  resources :answers
  resources :trypoints
  resources :admins


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
  get 'dashboard' => 'admins#index'
  get 'quiz' => 'quiz#index'

  get 'dashboard/museos', to: 'museos#index', :as => 'museo_index'
  get 'dashboard/resultados', to: 'admins#resultados', :as => 'resultados'
  get 'dashboard/registro', to: 'admins#registrar', :as => 'registrar'

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

  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:preguntaid/answers/new', to: 'answers#new', :as => 'answer_new'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:preguntaid/answers/:id', to: 'answers#show', :as => 'answer_show'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:preguntaid/answers/:id/edit', to: 'answers#edit', :as => 'answer_edit'
  delete 'answers/:id', to: 'answers#destroy', :as => 'answer_destroy'

  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas', to: 'preguntas#index', :as => 'pregunta_index'
  post 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas', to: 'preguntas#create', :as => 'pregunta_create'
  put 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:id', to: 'preguntas#update', :as => 'pregunta_update'
  patch 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:id', to: 'preguntas#update', :as => 'pregunta_patch'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/new', to: 'preguntas#new', :as => 'pregunta_new'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:id', to: 'preguntas#show', :as => 'pregunta_show'
  get 'dashboard/museos/:museoid/exposicions/:exposicionid/salas/:salaid/preguntas/:id/edit', to: 'preguntas#edit', :as => 'pregunta_edit'
  delete 'preguntas/:id', to: 'preguntas#destroy', :as => 'pregunta_destroy'


  get 'quiz/salas/:id', to: 'salas#showquiz', :as => 'quizshow'
  get 'quiz/museos/:id', to: 'museos#indexquiz', :as => 'indexquiz'
  get 'quiz/exposicions/:id', to: 'exposicions#salasquiz', :as => 'salasquiz'
  get 'quiz/salas/:id/finish', to: 'salas#endquiz', :as => 'endquiz'

  get 'points', to: 'trypointss#index', :as => 'points'
  get 'points/:id', to: 'trypointss#show', :as => 'points_show'
  patch 'points/:id', to: 'trypointss#update', :as => 'points_patch'
  put 'points/:id', to: 'trypointss#update', :as => 'points_put'
  post 'points', to: 'trypointss#create', :as => 'points_create'

  post '/addpoint' => "salas#sumPoints", :as => "sumPoints"
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
