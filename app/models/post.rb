class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  scope :featured, -> { where(featured: true) }
  scope  :ordered, -> {order( 'published_at DESC') }
  default_scope -> {where("published_at <= ? ", Time.now) .order ("published_at DESC")}
  attr_accessible :author, :body, :featured, :published_at, :title
  validates :title, :body, presence: true

  validates :title, 
            length: { in: 6..65 }, 
            presence: true, 
            uniqueness: true
  #validate :published_at_is_in_the_future, on: :create

#private

 #  def validates_published_at_is_in_the_future
 #     errors.add(:published_at, "Published at must be in the future") unless published_at >= Time.now
 # end

end
