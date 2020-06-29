class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.string :heroine
      t.string :power

      t.timestamps
    end
  end
end
