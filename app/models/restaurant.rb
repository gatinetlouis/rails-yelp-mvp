class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }

  def average
    reviews = self.reviews
    sum = 0
    reviews.each do |review|
      sum += review.rating if review.rating.is_a? Integer
    end
    reviews.length.zero? ? '' : sum / reviews.length
  end
end
