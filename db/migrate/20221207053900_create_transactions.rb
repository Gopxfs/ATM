class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :type, default: "deposit"
      t.decimal :value, default: 0, precision: 52, scale: 2
      t.integer :remittee_id
      t.string :date, default: DateTime.now.strftime("%d/%m/%Y %H:%M")
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
