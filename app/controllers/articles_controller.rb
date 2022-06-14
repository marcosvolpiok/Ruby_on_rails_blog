class ArticlesController < ApplicationController
    require 'securerandom'

    def index
      @articles = Article.all
    end

    def index_admin
      @articles = Article.all
    end

    

    def new
        @article = Article.new
    end

    def create
        uid = SecureRandom.hex(10)

        @article = Article.new
        @article.title = article_params[:title]
        @article.body = article_params[:body]
        @article.id = uid
        @article.save!
        redirect_to '/admin/articles/'
    end    

    private
        def article_params
            params.require(:article).permit(:title, :body)
        end    
end
