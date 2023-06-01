Rails.application.routes.draw do
  resources :emails
  root to: 'emails#index'
end
