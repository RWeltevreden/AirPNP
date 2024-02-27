class AddforeignKeys < ActiveRecord::Migration[7.1]
  def change
    remove_column :items, :user_id
    remove_column :bookings, :user_id
    remove_column :bookings, :item_id

    add_reference :items, :user, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :item, foreign_key: true
  end
end
