Rails.application.routes.draw do
  root 'tweets#index'
  resources :tweets do
    resource :like
    resource :retweet
  end
end
