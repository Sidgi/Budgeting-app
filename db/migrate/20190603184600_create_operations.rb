class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.string :name
      t.integer :amount
      t.text :description
      t.date :date_of_expense
      t.string :priority
      t.string :category
      t.string :type_of_operation
      t.references :wallet, foreign_key: true

      t.timestamps
    end
  end
end
