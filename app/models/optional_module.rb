class OptionalModule < ApplicationRecord

    validates :name, :description, presence: true
    has_many :accounts_optional_modules
    has_many :accounts, through: :accounts_optional_modules
end
