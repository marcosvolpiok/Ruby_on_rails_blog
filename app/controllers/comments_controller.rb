class CommentsController < ApplicationController
    require 'securerandom'
    def create
        @comment = Comment.new
        @comment.email = comment_params[:email]
        @comment.body = comment_params[:body]
        @comment.article_id = params[:id]
        @comment.save!

        redirect_to "/blog/#{params[:id]}"
    end    
    

    private
        def comment_params
            params.require(:comment).permit(:email, :body)
        end    
end

