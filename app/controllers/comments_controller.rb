class CommentsController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!
  before_action :check_admin

  def new
    @comment = @post.comments.new
  end

  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to post_path(@comment.post)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_path }
      format.js
    end
  end
  private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def set_post
      @post = Post.find(params[:post_id])
    end
end
