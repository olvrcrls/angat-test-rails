class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, :unique => true
      t.integer :vertical_id
      t.string :state, :default => 'active'

      t.timestamps
    end
  end
end
