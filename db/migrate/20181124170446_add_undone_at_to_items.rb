class AddUndoneAtToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :undone_at, :datetime
  end
end
