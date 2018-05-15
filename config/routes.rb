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

  get 'query/:else', to: 'pages#else' # query as a route and grab everythat that is typed inside here

  root to: 'pages#home' # home page

end
