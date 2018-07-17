class CreateUserVisits < ActiveRecord::Migration
  def change
    create_table :user_visits do |t|
      t.references :user, index: true
      t.references :lake, index: true
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
