Rails.application.routes.draw do
  # Cat profiles
  resources :cats, only: [:index]
end
