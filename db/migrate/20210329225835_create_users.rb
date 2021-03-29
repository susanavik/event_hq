class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :User
      t.string :username
      t.string :passwordname
      t.string :bio

      t.timestamps
    end
  end
end
