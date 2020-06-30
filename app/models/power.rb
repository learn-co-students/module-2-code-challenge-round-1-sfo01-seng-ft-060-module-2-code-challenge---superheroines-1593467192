class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroine_powers
    accepts_nested_attributes_for :heroine_powers

    def heroine_powers_attributes=(ids)
        ids.values[0].each do |key, value|
            if key == "heroine_id"
                value.each do |heroine_id| 
                    if heroine_id != ""
                        heroine = Heroine.find_or_create_by(id: heroine_id)
                        self.heroines << heroine
                    end
                end
            end
        end
    end
end
