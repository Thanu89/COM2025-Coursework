class Student < ApplicationRecord
    has_one :account
    has_and_belongs_to_many :optional_modules
end
