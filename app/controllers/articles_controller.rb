class ArticlesController < ApplicationController
  # only public methods can be actions for controllers
  before_action :authenticate_user!
  
  def new

  end
  
# step1/////  
#   def create
#    # render plain: params[:article].inspect
#    @article = Article.new(params[:article])
#   
#    @article.save
#    redirect_to @article
#  end
  
  
  def show
    @article = Article.find(params[:id])
  end
    
  def create
    @article = Article.new(article_params)
   
    @article.save
    redirect_to @article
  end
   
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end


end
