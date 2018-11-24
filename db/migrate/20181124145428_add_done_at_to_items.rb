class AddDoneAtToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :done_at, :datetime
  end
end
