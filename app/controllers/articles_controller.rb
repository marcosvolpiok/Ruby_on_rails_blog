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

        @client = Article.new
        @client.title = article_params[:title]
        @client.body = article_params[:body]
        @client.id = uid
        @client.save!
        redirect_to '/admin/index'
    end    

    private
        def article_params
            params.require(:article).permit(:title, :body)
        end    
end
