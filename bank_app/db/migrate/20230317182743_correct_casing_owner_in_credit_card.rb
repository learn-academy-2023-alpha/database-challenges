class CorrectCasingOwnerInCreditCard < ActiveRecord::Migration[7.0]
  def change
      rename_column :credit_cards, :Owner_id, :owner_id
  end
end
