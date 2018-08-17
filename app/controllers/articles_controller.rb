class ArticlesController < ApplicationController
  before_action :set_article_and_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all.order("category_id asc")
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        update_history_and_latestversionid
        flash[:success] = "新文章已保存"
        format.html { redirect_to @article }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        update_history_and_latestversionid
        flash[:success] = "修改保存成功"
        format.html { redirect_to @article }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      flash[:success] = "文章已删除"
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_and_category
      @article = Article.find(params[:id])
      @category = @article.category
    end

    def update_history_and_latestversionid
      history = @article.histories.create!({
        # editor: current_user
        content: params.require(:article)[:content], 
        comment: params.require(:article)[:update_comment]
      })
      @article.update(latest_version_id: history.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :category_id, :original_history_version_id)
    end
end
