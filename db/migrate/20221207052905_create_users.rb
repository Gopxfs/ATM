class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :balance, default: 0, precision: 52, scale: 2
      t.integer :account

      t.timestamps
    end
  end
end
