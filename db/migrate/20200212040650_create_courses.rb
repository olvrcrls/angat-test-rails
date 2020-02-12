class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :author
      t.integer :category_id
      t.string :state, :default => 'active'

      t.timestamps
    end
  end
end
