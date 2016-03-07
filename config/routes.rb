Rails.application.routes.draw do

  resources :submissions
  resources :countries
  resources :tags
  resources :pages
  resources :projects
  resources :series
  resources :organizations
  resources :trainlanguages
  resources :materialtypes
  #resources :searches
  resources :technicalareas
  resources :targetgroups
  resources :languages
  resources :target_groups
  resources :technical_areas
  resources :resources do
    collection do
      get :edit_multiple
      put :update_multiple
      #put :updatelogos
    end
  end
  resources :trainers
  resources :site_images
  resources :site_documents
  resources :post_documents
  devise_for :users
  resources :posts
  resources :comments, :path_prefix => '/:commentable_type/:commentable_id'
  get 'visitors/about', to: 'visitors#about', as: 'about'
  #get 'visitors/results', to: 'visitors#results', as: 'results'

  get 'resources/newtranslation', to: 'resources#newtranslation', as: 'newtranslation'
  put 'updatelogos', to: 'resources#updatelogos', as: 'updatelogos'
  get 'searchform', to: 'resources#search_resources', as: 'searchform'
  #get 'searches', to: 'searches#index', as: 'searches'
  get 'checkorgs', to: 'resources#checkorgs', as: 'checkorgs'
  get 'resources/check_proj', to: 'resources#check_proj', as: 'checkproj'
  root 'visitors#index'


  resources :users
  mount Ckeditor::Engine => '/ckeditor'
end
