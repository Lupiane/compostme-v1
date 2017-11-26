class Compost < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :owner, presence: true, inclusion: { in: %w(public private) }
  validates :user, presence:true
end
