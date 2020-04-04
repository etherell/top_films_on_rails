class Comment < ApplicationRecord
  belongs_to :article, polymorphic: true
  validates :commenter, presence: true, length: { minimum: 3}
  validates :body, presence: true, length: { minimum: 10}
end
