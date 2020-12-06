class CreateJoinTableAccountsModules < ActiveRecord::Migration[5.2]
  def change
    create_join_table :accounts, :optional_modules do |t|
      t.index [:account_id, :optional_module_id], :unique => true, :name => 'my_index'
    end
  end
end
