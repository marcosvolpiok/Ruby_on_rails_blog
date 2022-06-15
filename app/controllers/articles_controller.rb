class ArticlesController < ApplicationController
    require 'securerandom'

    def index
      @articles = Article.all
    end

    def index_admin
      @articles = Article.all
    end

    def edit
      @article = Article.find(params[:id])
    end

    def show
      @article = Article.find(params[:id])
      @comments = Comment.where(article_id: params[:id])
      @comment = Comment.new
    end

    def delete
      article = Article.find(params[:id])
      article.destroy

      redirect_to '/admin/articles/'
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new
        @article.title = article_params[:title]
        @article.body = article_params[:body]
        @article.save!

        redirect_to '/admin/articles/'
    end    

    def update
      @article = Article.find(params[:id])
      @article.title = article_params[:title]
      @article.body = article_params[:body]
      @article.save!

      redirect_to '/admin/articles/'
    end     

    private
        def article_params
            params.require(:article).permit(:title, :body)
        end    
end
