Bloccit::Application.routes.draw do

  resources :advertisements
  # get 'advertisements' => "advertisements#index"

  resources :posts
  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
