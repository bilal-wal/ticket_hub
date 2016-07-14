class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :ticket

  validates :description, presence: true
end
