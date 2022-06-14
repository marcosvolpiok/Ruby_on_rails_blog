Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope 'admin' do
    resources :articles, only: %i[create new edit update] do
      collection do
        root to: 'articles#index_admin'        
      end
    end
  end
end
