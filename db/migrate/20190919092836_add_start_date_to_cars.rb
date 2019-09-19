class AddStartDateToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :start_date, :datetime
  end
end
