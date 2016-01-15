Rails.application.routes.draw do
  get 'welcome/index'

  resources :posts, defaults: { format: :json }
  root 'welcome#index'
end
