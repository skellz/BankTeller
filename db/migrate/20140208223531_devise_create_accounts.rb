class DeviseCreateAccounts < ActiveRecord::Migration
  def change
    create_table(:accounts) do |t|
      ## Database authenticatable
      t.string :name,              :null => false, :default => ""
      t.string :encrypted_pin, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_pin_token
      t.datetime :reset_pin_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_name # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :name or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :accounts, :name,                :unique => true
    add_index :accounts, :reset_pin_token, :unique => true
    # add_index :accounts, :confirmation_token,   :unique => true
    # add_index :accounts, :unlock_token,         :unique => true
  end
end
