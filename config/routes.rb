Rails.application.routes.draw do
  resources :posts, defaults: { format: :json }
  root 'posts#index'
end
