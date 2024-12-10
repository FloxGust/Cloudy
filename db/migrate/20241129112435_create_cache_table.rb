class CreateCacheTable < ActiveRecord::Migration[6.1]
  def change
    create_table :caches do |t|
      t.string :key, null: false
      t.text :value
      t.datetime :expires_at

      t.timestamps
    end

    add_index :caches, :key, unique: true
  end
end