class CommentsController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_LOGIN'], password: ENV['ADMIN_PASSWORD'], only: [:destroy]
  before_action :set_post, only: [:create, :destroy]

  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end
    
    def comment_params
      params.require(:comment).permit(:username, :content)
    end
end