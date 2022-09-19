Rails.application.routes.draw do
  root 'homes#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Resources
  resources :users

  # Admin Pages
  get :lionsocial, 'admins/lionsocial'
  get :cross, 'admins/lionnav'
  get :moviemakers, 'admins/moviemakers'
  get :rortutorials, 'admins/railstutorials'
  get :lionfianace,  'admins/lionfianace'

  # Controls
  get :usercontrol, 'controls/user'

end
