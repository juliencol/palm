class Review < ApplicationRecord
  belongs_to :user
  belongs_to :island
end
