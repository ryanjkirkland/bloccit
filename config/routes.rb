Rails.application.routes.draw do

  resources :posts

  resources :questions

  get 'posts' => 'posts#index'

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
