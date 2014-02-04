class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :author, :message

  validates :author, presence: true
  validates :message, length: { maximum: 777}, presence: true
  validates :post, presence: true 
  # before_validation :set_author_to_anonymous_if_blank
  # private

  # def 
  #   if author.blank?
  #     author = ' Anonymous'
  # end

end
