class CommentsController < ApplicationController
  before_action :require_user

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
        flash[:success] = "Comment was created successfully"
        redirect_to post_path(@post)
    else
      flash[:danger] = "Comment was not created"
      redirect_to post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.find(params[:id])
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    flash[:success] = "Your comment has been removed successfully"
    redirect_to post_path(@post)
  end


  private

  def comment_params
    params.require(:comment).permit(:description)
  end

end
