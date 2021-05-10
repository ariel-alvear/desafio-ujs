class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    unless @post.save
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
