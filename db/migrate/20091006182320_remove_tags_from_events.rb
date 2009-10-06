class RemoveTagsFromEvents < ActiveRecord::Migration
  def self.up
    remove_column('events', 'tags')
  end

  def self.down
    add_column('events','tags')
  end
end
