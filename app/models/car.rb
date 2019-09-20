class Car < ApplicationRecord
  belongs_to :user

  #validations
  validates :name, presence: true
  validates :category, inclusion: { in: %w(Económico SUV Monovolúmenes),
    message: "%{value} is not a valid category" }
  validates :doors, inclusion: { in: 2..5 }
  validates :seats, inclusion: { in: 2..5 }
  validates :gearshift, inclusion: { in: %W(manual automatic), message: "%{value} is not a valid gearshift" }
  validates :air, presence: true # maybe I have to check this out
  validates :lagguage, presence: true
  validates :pick_up, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

 #photo uploader
  mount_uploader :image, PhotoUploader








   extend TimeSplitter::Accessors
  split_accessor :start_date



end
