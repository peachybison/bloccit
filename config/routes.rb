Bloccit::Application.routes.draw do

  devise_for :users
  resources :questions

  resources :advertisements
  # get 'advertisements' => "advertisements#index"

  resources :posts

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
