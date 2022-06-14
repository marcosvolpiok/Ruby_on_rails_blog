Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :clients do
    collection do
      get :search
    end
  end

  scope 'admin' do
    resources :articles, only: %i[new create edit update]
    get 'index' => 'articles#index_admin'
  end
end
