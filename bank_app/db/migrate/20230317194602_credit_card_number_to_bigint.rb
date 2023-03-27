class CreditCardNumberToBigint < ActiveRecord::Migration[7.0]
  def change
      change_column :credit_cards, :number, :bigint
  end
end
