class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name
      t.string :description
      t.references :company
      t.references :parent
      t.references :child

      t.timestamps null: false
    end
  end
end
