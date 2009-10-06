class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.datetime :occurs
      t.string :location
      t.string :title
      t.string :description
      t.float :cost
      t.string :tags
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
