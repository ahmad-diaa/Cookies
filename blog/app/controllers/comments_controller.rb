class CommentsController < ApplicationController
	def create
  	  	
      @user = User.find(params[:user_id])
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      @comment.save
      redirect_to user_article_path(@user,@article)
    end
 	def destroy
    	 @user = User.find(params[:user_id])
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      @comment.destroy
      redirect_to user_article_path(@user,@article)
     	end
 
  def new
    @user = User.find(params[:user_id])
    @article = Article.find(params[:article_id])
    @comment = Cmment.new  
    end
    def index
      @user = User.find(params[:user_id])
      @article = Article.find(params[:article_id])
      @comments = Comment.order(id: :desc) 
    end

    private
     def comment_params
       params.require(:comment).permit(:commenter, :body)
    end
end
