class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :email, :encrypted_password, :name, presence: true
         has_many :accounts_optional_modules
         has_many :optional_modules, through: :accounts_optional_modules
end
