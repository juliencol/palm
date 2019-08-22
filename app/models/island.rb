class Island < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  mount_uploader :phototwo, PhotoUploader
  mount_uploader :photothree, PhotoUploader
end
