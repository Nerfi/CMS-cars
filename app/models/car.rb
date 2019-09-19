class Car < ApplicationRecord
  belongs_to :user





   extend TimeSplitter::Accessors
  #split_accessor :start_date
  split_accessor :start_date, date_format: "%D", time_format: "%I:%M%p"


end
