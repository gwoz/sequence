class CreateImplementations < ActiveRecord::Migration
  def change
    create_table :implementations do |t|
      t.text :description
      t.references :entity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
