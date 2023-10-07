Rails.application.routes.draw do
  root 'homes#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Resources
  resources :users
  resources :disables

  # Admin Pages
  get :lionsocial, 'admins/lionsocial'
  get :cross, 'admins/lionnav'
  get :moviemakers, 'admins/moviemakers'
  get :rortutorials, 'admins/railstutorials'
  get :lionfianace,  'admins/lionfianace'

  # Controls
  get :usercontrol, 'controls/user'
  get :disablecontrol, 'controls/disable'

  # Lion Social
  get :lionsocialdisable, 'lionsocial/disables'
  get :posts, 'lionsocial/posts'
  get :lionsocialannocments, 'lionsocial/annocments'
  get 'lionsocial/commentsfollowing'
  get 'lionsocial/messages'

end
