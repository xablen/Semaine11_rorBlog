class ArticlesController < ApplicationController
  def index
  	@the_articles = Article.page(params[:page]).per(5)
  	@comments = Comment.all
  end

  def show
  	@comments = Comment.page(params[:page]).per(5)
  	@the_article = Article.find(params[:id])
  	
  end
  
end