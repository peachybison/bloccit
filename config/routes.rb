Bloccit::Application.routes.draw do

<<<<<<< HEAD
  resources :advertisements
  # get 'advertisements' => "advertisements#index"

  resources :posts

=======
  resources :posts

>>>>>>> 1cc99e7f5f05ad43273317b0f28dab1bf9d03829
  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
