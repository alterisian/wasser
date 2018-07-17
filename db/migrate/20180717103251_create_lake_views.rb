class CreateLakeViews < ActiveRecord::Migration
  def change
    create_table :lake_views do |t|
      t.float :tl_lat
      t.float :tl_lng
      t.float :br_lat
      t.float :br_lng
      t.references :lake, index: true

      t.timestamps
    end
  end
end
