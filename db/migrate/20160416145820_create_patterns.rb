class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name
      t.string :description
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
