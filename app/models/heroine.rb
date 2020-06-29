class Heroine < ApplicationRecord
    has_many :heroine_powers 
    has_many :powers, through: :heroine_powers

    validates :name, :super_name, presence: true
end

# Add validations to the Heroine model:

# - must have a name
# - must have a super name

# Add error handling to the create action. 
# If a user tries to create an invalid Heroine, the user should see the validation errors.