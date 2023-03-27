class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.string :expiration_date
      t.integer :Owner_id

      t.timestamps
    end
  end
end
