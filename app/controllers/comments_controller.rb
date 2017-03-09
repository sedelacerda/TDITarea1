class CommentsController < ApplicationController
  def create

    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    if @comment.save
        flash[:notice] = "Comment has been created."
        redirect_to @post
    else
        flash.now[:danger] = "error"
    end
  end

  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
