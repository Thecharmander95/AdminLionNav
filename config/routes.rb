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

  resources :videos do 
    resources :comments
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
  get :errorpage, 'controls/errorpage'
  get :resolved, 'controls/resolved'

  # Lion Social
  get :lionsocialdisable, 'lionsocial/disables'
  get :lionposts, 'lionsocial/posts'
  get :lionsocialannocments, 'lionsocial/annocments'
  get :comments, 'lionsocial/comments'
  get :lionsocialabout, 'lionsocial/about'

  # Lion Fiance
  get :fianacedisable, 'lionfiance/disables'
  get :fianaceannoucment, 'lionfiance/annoucments'
  get :finaceabout, 'lionfiance/about'
  get :finacerror, 'lionfiance/errors'

  # Rails Fourms
  get :fourms, 'railsfourms/forums'
  get :fourmcomments, 'railsfourms/comments'
  get :fourmerrors, 'railsfourms/errors'
  get :fourmannouce, 'railsfourms/annoucments'
  get :fourmdisable, 'railsfourms/disables'
  get :fourmabout, 'railsfourms/about'
  get :videos, 'railsfourms/videos'
  get :guides, 'railsfourms/guides'

  # Movie Makers
  get :movieabout,'moviemakers/about'
  get :movieannouce,'moviemakers/annoucments'
  get :moviedisable,'moviemakers/disable'
  get :movieerror,'moviemakers/errors'
  get :movie, 'moviemakers/movietally'

end
