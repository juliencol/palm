class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :island

end
