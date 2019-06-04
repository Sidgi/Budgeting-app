class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.string :name
      t.string :currency
      t.integer :limit
      t.string :cash_or_credit
      t.integer :total
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
