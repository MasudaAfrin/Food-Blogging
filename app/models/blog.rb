class Blog < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :description, :image, presence: true
  validates :title, uniqueness: true
  validates :image, allow_blank: true, format: {
      with:
          %r{\.(gif|jpg|png)\z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
