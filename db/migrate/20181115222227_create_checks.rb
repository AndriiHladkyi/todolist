class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.text :description

      t.timestamps
    end
  end
end
