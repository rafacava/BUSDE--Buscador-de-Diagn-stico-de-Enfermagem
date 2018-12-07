Rails.application.routes.draw do
  get 'buscar/cinemas'
  get 'buscar/filmes'
  devise_for :users
  get 'login' => "login#login", as: "login"
  get 'logout' => "login#logout", as: "logout"
  post 'auth' => "login#auth", as: "login_auth"
  get 'usuario/new'
  get 'usuario/show/:id' => "usuario#show", as: "usuario_show"
  post 'usuario/create'
  get 'busca/diagnostico'
  get 'busca/relatorio'
  get 'busca/fator'
  get 'busca/caracteristica'
  root 'principal#index'
  resources :relatorios
  resources :caracteristicas
  resources :fators
  resources :diagnosticos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
