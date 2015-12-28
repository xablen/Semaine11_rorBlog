class CommentsController < ApplicationController

	def create
		@article_id = Article.find(params[:id]).id
		puts @article_id
	  	Comment.create author: params[:author],
	    content: params[:content], article_id: @article_id
	  	redirect_to "/#{params[:id]}"
	end

end

