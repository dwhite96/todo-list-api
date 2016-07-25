Rails.application.routes.draw do
  match '*all', to: 'application#preflight', via: [:options]
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
