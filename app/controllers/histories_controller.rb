class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]

  def index
    @article = Article.find(params[:article_id])
    @histories = @article.histories.order(created_at: :desc)
  end

  def show
    @article = @history.article
  end

  private
    def set_history
      @history = History.find(params[:id])
    end
end
