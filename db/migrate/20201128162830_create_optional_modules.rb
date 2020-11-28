class CreateOptionalModules < ActiveRecord::Migration[5.2]
  def change
    create_table :optional_modules do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
