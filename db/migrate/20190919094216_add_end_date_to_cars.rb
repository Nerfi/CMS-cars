class AddEndDateToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :end_date, :datetime
  end
end
