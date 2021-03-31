class AddDateAndTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :date_and_time, :datetime
  end
end
