class AddColumnStreetNameToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :street_name, :string
  end
end
