Rails.application.routes.draw do

  namespace :admin do # nesting
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  get 'leadgen/advertising/landing-page/lead', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts

  get 'posts/*missing', to: 'posts#missing' #globbing

  root to: 'pages#home' # home page

end
