class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :deposit
      t.decimal :withdrawl
      t.integer :balance_id

      t.timestamps
    end
  end
end
