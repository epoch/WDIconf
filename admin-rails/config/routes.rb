Rails.application.routes.draw do


  get 'talks/index'

  get 'talks/add_talk'

  get 'talks/edit_talk'

  # ------ Users routes ------
    # resources :users
    get   '/users/'               => 'users#index',   :as=>'users_home'
    get   '/users/all'            => 'users#all',     :as=>'users_all'
    get   '/users/signup'         => 'users#new',     :as=>'user_signup'
    post  '/users/signup'         => 'users#create'
    get   '/users/:id/profile'    => 'users#profile', :as=> 'user_profile'
    get   '/users/:id/edit'       => 'users#edit',    :as=> 'user_edit'
    put   '/users/:id/edit'       => 'users#update',  :as=> 'user_update'
    #delete '/user/delete/:id'     => 'user#destroy',  :as=> 'user_delete'
  # --------------------------

  # ------ Speakers routes ------
    resources :speakers
  # -----------------------------

  # ------ Authentication routes ------
    get   '/login'                => 'session#new',       :as => 'login'
    post  '/login'                => 'session#create'
    delete   '/logout'            => 'session#destroy',   :as => 'logout'
  # --------------------------

  # ------ Talks routes ------
    get '/talks/'                 => 'talks#index',   :as=>'talks'
    get 'talks/add_talk'          => 'talks#add',   :as=>'talk_add'
    get 'talks/edit_talk'         => 'talks#edit',   :as=>'talk_edit'
  # --------------------------

  get 'pages/index'
  get 'pages/about'

   get   '/'                  => 'pages#index',      :as => 'root'
end
