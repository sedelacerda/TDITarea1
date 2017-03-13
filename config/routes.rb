Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match 'admin/posts' => 'posts#admin',via:[:get,:post], as: 'admin'
  
  root 'posts#index'

end
