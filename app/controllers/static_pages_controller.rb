class StaticPagesController < ApplicationController
  
  def home
   @post = Post.featured
   @post = Post.featured.first
  end

  end

  def about
    
  end

  def project

  end


end
