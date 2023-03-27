class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
