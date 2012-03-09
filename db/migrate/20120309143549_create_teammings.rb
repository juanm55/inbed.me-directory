class CreateTeammings < ActiveRecord::Migration
  def change
    create_table :teammings do |t|
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
  end
end
