class RemoveAddressFromAccountsMoveToAddress < ActiveRecord::Migration[7.0]
  def change
    remove_column :accounts, :street_name, :string
    add_column :addresses, :street_name, :string
  end
end
