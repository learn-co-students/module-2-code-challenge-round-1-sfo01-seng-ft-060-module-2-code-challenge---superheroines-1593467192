class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers
    accepts_nested_attributes_for :heroine_powers
    validates :name, :super_name, presence: true
    validates :super_name, uniqueness: true

    def heroine_powers_attributes=(id)
        power = Power.find(id["0"].values[0])
        self.powers << power
    end
end
