Rails.application.routes.draw do

  resources :topics do
    resources :posts, :sponsored_posts, except: [:index]
  end

  get 'posts' => 'posts#index'

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
