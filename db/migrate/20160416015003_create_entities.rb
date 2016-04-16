class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name, null: false, unique: true
      t.references :entity_type, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
