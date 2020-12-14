class AccountsOptionalModule < ApplicationRecord
    belongs_to :account
    belongs_to :optional_module
    validates :account_id, :optional_module_id, presence: true
end