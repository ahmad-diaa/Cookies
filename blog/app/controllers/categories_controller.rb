class CategoriesController < ApplicationController
	def create
    @Category = Category.new(params[:id])
    if @Category.save
        redirect_to @Category
    else
      render 'new'
    end
end

def new
  @category = Category.new
     end
 
 def show
 	 @category = Category.find(params[:id])
  end
  def update
  	@category = Category.find(params[:id])  
  end
end
