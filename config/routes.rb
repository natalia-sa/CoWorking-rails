Rails.application.routes.draw do
  resources :workstations
  root "workstations#index"
end
