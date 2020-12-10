class AccountsOptionalModule < ApplicationRecord
    belongs_to :account
    belongs_to :optional_module
    validates :account_id, presence: true
    validates :optional_module_id, presence: true
end