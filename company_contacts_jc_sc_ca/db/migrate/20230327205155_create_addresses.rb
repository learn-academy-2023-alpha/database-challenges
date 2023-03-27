class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_name
      t.string :state
      t.integer :zip
      t.integer :account_id

      t.timestamps
    end
  end
end
