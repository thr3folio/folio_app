FolioApp::Application.routes.draw do

  get '/signin' => 'Sessions#new', as: 'signin'
  post '/sessions' => 'Sessions#create', as: 'sessions'
  delete '/signout' => 'Sessions#destroy', as: 'signout'

  resources :users


  resources :job_recruiters


  resources :agency_clients


  resources :client_jobs


  resources :external_jobs


  resources :clients


  resources :agencies

  resources :candidate_attributes

  resource :hiring_manager_attributes

  resource :recruiters_attributes

  # Set Root route
  root to: 'Candidates#index'

  # Routes for the Recruiter_note resource:
  # CREATE
  get '/recruiter_notes/new', controller: 'recruiter_notes', action: 'new', as: 'new_recruiter_note'
  post '/recruiter_notes', controller: 'recruiter_notes', action: 'create'

  # READ
  get '/recruiter_notes', controller: 'recruiter_notes', action: 'index', as: 'recruiter_notes'
  get '/recruiter_notes/:id', controller: 'recruiter_notes', action: 'show', as: 'recruiter_note'

  # UPDATE
  get '/recruiter_notes/:id/edit', controller: 'recruiter_notes', action: 'edit', as: 'edit_recruiter_note'
  put '/recruiter_notes/:id', controller: 'recruiter_notes', action: 'update'

  # DELETE
  delete '/recruiter_notes/:id', controller: 'recruiter_notes', action: 'destroy'
  #------------------------------

  # Routes for the Hiring_manager_note resource:
  # CREATE
  get '/hiring_manager_notes/new', controller: 'hiring_manager_notes', action: 'new', as: 'new_hiring_manager_note'
  post '/hiring_manager_notes', controller: 'hiring_manager_notes', action: 'create'

  # READ
  get '/hiring_manager_notes', controller: 'hiring_manager_notes', action: 'index', as: 'hiring_manager_notes'
  get '/hiring_manager_notes/:id', controller: 'hiring_manager_notes', action: 'show', as: 'hiring_manager_note'

  # UPDATE
  get '/hiring_manager_notes/:id/edit', controller: 'hiring_manager_notes', action: 'edit', as: 'edit_hiring_manager_note'
  put '/hiring_manager_notes/:id', controller: 'hiring_manager_notes', action: 'update'

  # DELETE
  delete '/hiring_manager_notes/:id', controller: 'hiring_manager_notes', action: 'destroy'
  #------------------------------

  # Routes for the Hiring_manager_job resource:
  # CREATE
  get '/hiring_manager_jobs/new', controller: 'hiring_manager_jobs', action: 'new', as: 'new_hiring_manager_job'
  post '/hiring_manager_jobs', controller: 'hiring_manager_jobs', action: 'create'

  # READ
  get '/hiring_manager_jobs', controller: 'hiring_manager_jobs', action: 'index', as: 'hiring_manager_jobs'
  get '/hiring_manager_jobs/:id', controller: 'hiring_manager_jobs', action: 'show', as: 'hiring_manager_job'

  # UPDATE
  get '/hiring_manager_jobs/:id/edit', controller: 'hiring_manager_jobs', action: 'edit', as: 'edit_hiring_manager_job'
  put '/hiring_manager_jobs/:id', controller: 'hiring_manager_jobs', action: 'update'

  # DELETE
  delete '/hiring_manager_jobs/:id', controller: 'hiring_manager_jobs', action: 'destroy'
  #------------------------------

  # Routes for the Candidate_job resource:
  # CREATE
  get '/candidate_jobs/new', controller: 'candidate_jobs', action: 'new', as: 'new_candidate_job'
  post '/candidate_jobs', controller: 'candidate_jobs', action: 'create'

  # READ
  get '/candidate_jobs', controller: 'candidate_jobs', action: 'index', as: 'candidate_jobs'
  get '/candidate_jobs/:id', controller: 'candidate_jobs', action: 'show', as: 'candidate_job'

  # UPDATE
  get '/candidate_jobs/:id/edit', controller: 'candidate_jobs', action: 'edit', as: 'edit_candidate_job'
  put '/candidate_jobs/:id', controller: 'candidate_jobs', action: 'update'

  # DELETE
  delete '/candidate_jobs/:id', controller: 'candidate_jobs', action: 'destroy'
  #------------------------------

  # Routes for the Candidate_recruiter resource:
  # CREATE
  get '/candidate_recruiters/new', controller: 'candidate_recruiters', action: 'new', as: 'new_candidate_recruiter'
  post '/candidate_recruiters', controller: 'candidate_recruiters', action: 'create'

  # READ
  get '/candidate_recruiters', controller: 'candidate_recruiters', action: 'index', as: 'candidate_recruiters'
  get '/candidate_recruiters/:id', controller: 'candidate_recruiters', action: 'show', as: 'candidate_recruiter'

  # UPDATE
  get '/candidate_recruiters/:id/edit', controller: 'candidate_recruiters', action: 'edit', as: 'edit_candidate_recruiter'
  put '/candidate_recruiters/:id', controller: 'candidate_recruiters', action: 'update'

  # DELETE
  delete '/candidate_recruiters/:id', controller: 'candidate_recruiters', action: 'destroy'
  #------------------------------

  # Routes for the Candidate_company resource:
  # CREATE
  get '/candidate_companies/new', controller: 'candidate_companies', action: 'new', as: 'new_candidate_company'
  post '/candidate_companies', controller: 'candidate_companies', action: 'create'

  # READ
  get '/candidate_companies', controller: 'candidate_companies', action: 'index', as: 'candidate_companies'
  get '/candidate_companies/:id', controller: 'candidate_companies', action: 'show', as: 'candidate_company'

  # UPDATE
  get '/candidate_companies/:id/edit', controller: 'candidate_companies', action: 'edit', as: 'edit_candidate_company'
  put '/candidate_companies/:id', controller: 'candidate_companies', action: 'update'

  # DELETE
  delete '/candidate_companies/:id', controller: 'candidate_companies', action: 'destroy'
  #------------------------------

  # Routes for the Job resource:
  # CREATE
  get '/jobs/new', controller: 'jobs', action: 'new', as: 'new_job'
  post '/jobs', controller: 'jobs', action: 'create'

  # READ
  get '/jobs', controller: 'jobs', action: 'index', as: 'jobs'
  get '/jobs/:id', controller: 'jobs', action: 'show', as: 'job'

  # UPDATE
  get '/jobs/:id/edit', controller: 'jobs', action: 'edit', as: 'edit_job'
  put '/jobs/:id', controller: 'jobs', action: 'update'

  # DELETE
  delete '/jobs/:id', controller: 'jobs', action: 'destroy'
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get '/companies/new', controller: 'companies', action: 'new', as: 'new_company'
  post '/companies', controller: 'companies', action: 'create'

  # READ
  get '/companies', controller: 'companies', action: 'index', as: 'companies'
  get '/companies/:id', controller: 'companies', action: 'show', as: 'company'

  # UPDATE
  get '/companies/:id/edit', controller: 'companies', action: 'edit', as: 'edit_company'
  put '/companies/:id', controller: 'companies', action: 'update'

  # DELETE
  delete '/companies/:id', controller: 'companies', action: 'destroy'
  #------------------------------

  # Routes for the Note resource:
  # CREATE
  get '/notes/new', controller: 'notes', action: 'new', as: 'new_note'
  post '/notes', controller: 'notes', action: 'create'

  # READ
  get '/notes', controller: 'notes', action: 'index', as: 'notes'
  get '/notes/:id', controller: 'notes', action: 'show', as: 'note'

  # UPDATE
  get '/notes/:id/edit', controller: 'notes', action: 'edit', as: 'edit_note'
  put '/notes/:id', controller: 'notes', action: 'update'

  # DELETE
  delete '/notes/:id', controller: 'notes', action: 'destroy'
  #------------------------------

  # Routes for the Hiring_manager resource:
  # CREATE
  get '/hiring_managers/new', controller: 'hiring_managers', action: 'new', as: 'new_hiring_manager'
  post '/hiring_managers', controller: 'hiring_managers', action: 'create'

  # READ
  get '/hiring_managers', controller: 'hiring_managers', action: 'index', as: 'hiring_managers'
  get '/hiring_managers/:id', controller: 'hiring_managers', action: 'show', as: 'hiring_manager'

  # UPDATE
  get '/hiring_managers/:id/edit', controller: 'hiring_managers', action: 'edit', as: 'edit_hiring_manager'
  put '/hiring_managers/:id', controller: 'hiring_managers', action: 'update'

  # DELETE
  delete '/hiring_managers/:id', controller: 'hiring_managers', action: 'destroy'
  #------------------------------

  # Routes for the Recruiter resource:
  # CREATE
  get '/recruiters/new', controller: 'recruiters', action: 'new', as: 'new_recruiter'
  post '/recruiters', controller: 'recruiters', action: 'create'

  # READ
  get '/recruiters', controller: 'recruiters', action: 'index', as: 'recruiters'
  get '/recruiters/:id', controller: 'recruiters', action: 'show', as: 'recruiter'

  # UPDATE
  get '/recruiters/:id/edit', controller: 'recruiters', action: 'edit', as: 'edit_recruiter'
  put '/recruiters/:id', controller: 'recruiters', action: 'update'

  # DELETE
  delete '/recruiters/:id', controller: 'recruiters', action: 'destroy'
  #------------------------------

  # Routes for the Candidate resource:
  # CREATE
  get '/candidates/new', controller: 'candidates', action: 'new', as: 'new_candidate'
  post '/candidates', controller: 'candidates', action: 'create'

  # READ
  get '/candidates', controller: 'candidates', action: 'index', as: 'candidates'
  get '/candidates/:id', controller: 'candidates', action: 'show', as: 'candidate'

  # UPDATE
  get '/candidates/:id/edit', controller: 'candidates', action: 'edit', as: 'edit_candidate'
  put '/candidates/:id', controller: 'candidates', action: 'update'

  # DELETE
  delete '/candidates/:id', controller: 'candidates', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
