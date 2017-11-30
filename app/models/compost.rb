class Compost < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :owner, presence: true, inclusion: { in: %w(public private) }
  validates :user, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
