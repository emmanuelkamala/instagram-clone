class PostsController < ApplicationController

  def new 
  end

  def create 
  end

  def Show
  end

  private 
   
    def set_params
      params.require(:post).permit(:image)
    end
end