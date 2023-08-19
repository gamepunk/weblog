class CommentsController < ApplicationController
	before_action :set_post

	# POST /posts/1/comments
  def create
    @post.comments.create! comment_params
    redirect_to @post
  end

  private
	  def set_post
	    @post = Post.find(params[:post_id])
	  end
    
	  def comment_params
	    params.require(:comment).permit(:content)
	  end
end
