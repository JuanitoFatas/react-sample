Rails.application.routes.draw do
  root 'dashboard#index'

  namespace 'api' do
    resources :comments, only: [:index, :create]
  end
end
