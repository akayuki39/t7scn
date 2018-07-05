class HomeController < ApplicationController
  
  def index
    @categorys = Category.all
  end
end
