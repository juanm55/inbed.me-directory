class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :position_id
      t.string :email
      t.string :twitter_acc
      t.string :phone_mob
      t.string :phone_land
      t.text :address

      t.timestamps
    end
  end
end
