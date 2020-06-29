class CreateHeroinePowers < ActiveRecord::Migration[5.0]
    def change
      create_table :heroine_powers do |t|
        t.string :heroine
        t.string :power
      end
    end
  end
  