class Car < ApplicationRecord
  belongs_to :user

  def start_time
    self.car.start

  end
end
