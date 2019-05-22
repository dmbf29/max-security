Rails.application.routes.draw do
  resources :prisons, only: :show
end
