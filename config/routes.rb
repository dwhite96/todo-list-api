Rails.application.routes.draw do
  match '*all', to: 'application#preflight', via: [:options]

  get 'set_user', to: 'application#set_user'
  get 'request_token', to: 'tokens#request_token'
  get 'access_token', to: 'tokens#access_token'

  resources :todos
end
