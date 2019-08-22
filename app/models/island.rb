class Island < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  mount_uploader :phototwo, PhotoUploader
  mount_uploader :photothree, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

