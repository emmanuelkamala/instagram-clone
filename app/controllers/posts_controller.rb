class PostsController < ApplicationController

  def new 
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)
    @post.account_id = current_account.id if account_signed_in?

    if @post.save
      redirect_to dashboard_path, flash: { success: "Post was successfully saved" }
    else
      redirect_to new_post_path, flash: { danger: "Post was not created" }
    end
  end

  def Show
  end

  private 
    def post_params
      params.require(:post).permit(:image, :image_cache, :description)
    end
end