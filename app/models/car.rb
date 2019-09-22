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
  #validates end_date, presence true
  validate :end_date_is_before_start_date

 #photo uploader
  mount_uploader :image, PhotoUploader

  #money rails
    monetize :price_cents


   extend TimeSplitter::Accessors
  split_accessor :start_date

  private

  def end_date_is_before_start_date
    return if end_date.blank? || start_date.blank?

  if end_date < start_date
    errors.add(:start_date, "cannot be before the start date")
  end
end




end
