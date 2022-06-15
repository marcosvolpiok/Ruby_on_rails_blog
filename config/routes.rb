Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'blog' => 'articles#index'
  get 'blog/:id' => 'articles#show'

  post 'blog/comment/:id' => 'comments#create'


  scope 'admin' do
    resources :articles, only: %i[create new edit update] do
      collection do
        root to: 'articles#index_admin' 
        get ':id/delete' => 'articles#delete'
        patch '/' => 'articles#update'
      end
    end
  end
end
