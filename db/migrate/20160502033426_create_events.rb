class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.string :location
      t.timestamps
    end
  end
  def down
    drop_table :events
  end
end

