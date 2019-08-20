class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :island
  validates :island_id, uniqueness: { scope: :user_id }
end
