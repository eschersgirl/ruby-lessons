class ArticlesController < ApplicationController
  # only public methods can be actions for controllers
  
  def new
  end
  
  def create
    render plain: params[:article].inspect
  end
  
end
