class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.string :heroine 
      t.string :power
      t.integer :heroine_id
      t.integer :power_id
      t.timestamps
    end
  end
end
