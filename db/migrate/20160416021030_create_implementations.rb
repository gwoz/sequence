class CreateImplementations < ActiveRecord::Migration
  def change
    create_table :implementations do |t|
      t.text :description, null: false
      t.references :entity, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
