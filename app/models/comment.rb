class Comment < ApplicationRecord
  belongs_to :blog
  validates :commenter, :body, presence: true
end
