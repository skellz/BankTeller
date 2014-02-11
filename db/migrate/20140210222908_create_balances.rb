class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.decimal :balance
      t.integer :name_id

      t.timestamps
    end
  end
end
