class RemoveTimeFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :time, :time
  end
end
