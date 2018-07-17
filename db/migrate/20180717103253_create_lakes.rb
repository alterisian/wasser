class CreateLakes < ActiveRecord::Migration
  def change
    create_table :lakes do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
