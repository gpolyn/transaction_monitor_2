class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :institution_id
      t.string :account_id
      t.string :account_name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
