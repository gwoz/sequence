class UserImplementations < ActiveRecord::Migration
  def change
  	create_table :user_implementations do |t|
  		t.references :user, index: true, foreign_key: true, null: false
      t.references :implementation, index: true, foreign_key: true, null: false
    end
  end
end
