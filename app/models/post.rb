class Post < ActiveRecord::Base
  has_many :comments
  attr_accessible :author, :body, :featured, :published_at, :title



  
end
