class Message < ApplicationRecord
  belongs_to :user
  belongs_to :compost
  # belongs_to :user, through: :compost

  validates :body, presence: true
end
