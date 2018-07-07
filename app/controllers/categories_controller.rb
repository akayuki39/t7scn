class CategoriesController < ApplicationController

  def show
    @category = Category.find_by(id: params[:id])
    @articles = @category.articles
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
