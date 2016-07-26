class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :ticket

  validates :description, presence: true

  def self.send_response(comments)
    response = {}
    comments.each do |comment|
      response[comment.id] = {name: comment.user.full_name, description: comment.description, created_at: comment.created_at}
    end
    response
  end
end
