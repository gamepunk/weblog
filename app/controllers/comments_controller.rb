class CommentsController < ApplicationController
	before_action :set_article

	def create
		comment = @article.comments.create!(comment_params)
    CommentsMailer.submitted(comment).deliver_later
		redirect_to @article
	end	


	private
		def set_article
			@article = Article.find(params[:article_id])
		end

		def comment_params
      params.require(:comment).permit(:name, :content)
    end
end
