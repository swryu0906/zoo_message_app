class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = "Comment was successfully created!"
    end
      redirect_to post_path(@comment.post)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
