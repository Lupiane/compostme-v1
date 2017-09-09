class Review < ApplicationRecord
  belongs_to :user
  belongs_to :compost
end
