class RemoveCreditCardFromOwner < ActiveRecord::Migration[7.0]
  def change
      remove_column :owners, :Credit_card_id, :integer
  end
end
