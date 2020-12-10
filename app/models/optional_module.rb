class OptionalModule < ApplicationRecord
    has_many :accounts_optional_modules
    has_many :accounts, through: :accounts_optional_modules
end
