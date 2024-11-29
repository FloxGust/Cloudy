class CreateCableTables < ActiveRecord::Migration[6.1]
  def change
    create_table :cable_subscriptions do |t|
      t.string :identifier, null: false
      t.text :connection_id, null: false

      t.timestamps
    end

    add_index :cable_subscriptions, :identifier, unique: true
  end
end
