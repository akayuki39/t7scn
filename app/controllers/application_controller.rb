class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_sidebar

  def load_sidebar
    @sidebar_categories = Category.all
  end
end
