class StaticPagesController < ApplicationController
  
  def home
    @post = Post.where(featured: true). first
    
  end

  def about
    
  end

  def gallery

  end
end
