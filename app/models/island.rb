class Island < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  mount_uploader :photo, PhotoUploader
<<<<<<< HEAD
  mount_uploader :phototwo, PhotoUploader
  mount_uploader :photothree, PhotoUploader
=======

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
>>>>>>> 124277e7238d20466e9570df2bb460eaca54f753
end

