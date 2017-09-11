class Compost < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :type, presence: true
end
