class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]
  def create
    @post = Post.new(post_params)
    unless @post.save
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def show

  end

  def edit
    
  end

  def update
    @post.update(post_params)
  end

  def destroy
    @post.destroy
  end



  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
