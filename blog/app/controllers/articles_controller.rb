class ArticlesController < ApplicationController
	def index
		@user = User.find(params[:user_id])
    	@articles = Article.order(id: :desc) 
    end
   

	def show
		@user = User.find(params[:user_id])
		@article = Article.find(params[:id])
	end
	def sortedarticles
		@user = User.find(params[:user_id])
		@articles = Article.all.order(:category_id)
	end

	def new
		@user = User.find(params[:user_id])
		@article = Article.new
	end
def edit
		@user = User.find(params[:user_id])
		@article = Article.find(params[:article_id])
	end

	def create
		@user = User.find(params[:user_id])
		@article = Article.new(article_params)
		if @article.save
			redirect_to user_articles_path
		else
			render 'new'
		end
	end
	def update
		@user = User.find(params[:user_id])
  		@article = Article.find(params[:id])
 	
  		if @article.update(article_params)
    		redirect_to user_article_path
  		else
    		render 'edit'
  		end
	end
	def destroy
		@user = User.find(params[:user_id])
  		@article = Article.find(params[:id])
  		@article.destroy
 
  		redirect_to user_articles_path
	end
	def sortedarticles
		@user = User.find(params[:user_id])
		@articles = Article.all.order(:category_id)
	end
	private 
		def article_params
		params.require(:article).permit(:title, :text , :category_id)
	end
end
