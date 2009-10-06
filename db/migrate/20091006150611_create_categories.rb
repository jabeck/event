class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    ["Concert", "Movie", "Club", "Volunteer"].each do |x|
      cat = Category.new(:name => x)
      cat.save!
    end
  end

  def self.down
    drop_table :categories
  end
end
