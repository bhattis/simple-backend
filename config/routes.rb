Rails.application.routes.draw do
  
  get 'main/index'

  get '*path', to: 'main#index'
  root 'main#index'
end
