class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.integer :price
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
