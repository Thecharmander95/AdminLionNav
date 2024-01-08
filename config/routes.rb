Rails.application.routes.draw do
  root 'homes#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Resources
  resources :users
  resources :disables
  resources :posts
  resources :abouts
  resources :errors
  resources :announcements

  # All resources with do and end

  resources :posts do
    resources :comments
  end

  resources :conversations, only: [:index, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end

  # Admin Pages
  get :lionsocial, 'admins/lionsocial'
  get :cross, 'admins/lionnav'
  get :moviemakers, 'admins/moviemakers'
  get :rortutorials, 'admins/railstutorials'
  get :lionfianace,  'admins/lionfianace'

  # Controls
  get :usercontrol, 'controls/user'
  get :disablecontrol, 'controls/disable'
  get :updateannouce, 'controls/updateannouncement'
  get :annocments, 'controls/annocments'
  get :updateabout, 'controls/updateabout'
  get :aboutpages, 'controls/aboutpage'

  # Lion Social
  get :lionsocialdisable, 'lionsocial/disables'
  get :lionposts, 'lionsocial/posts'
  get :lionsocialannocments, 'lionsocial/annocments'
  get :comments, 'lionsocial/comments'
  get :lionsocialabout, 'lionsocial/about'

end
