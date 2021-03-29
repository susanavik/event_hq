class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.time :time
      t.date :date
      t.integer :capacity
      t.string :description

      t.timestamps
    end
  end
end
