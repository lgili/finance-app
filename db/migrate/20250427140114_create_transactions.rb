class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.decimal :amount
      t.date :date
      t.string :transaction_type
      t.string :category

      t.timestamps
    end
  end
end
