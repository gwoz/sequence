class UserImplementations < ActiveRecord::Migration
  def change
  	create_table :user_implementations do |t|
  		t.references :user, index: true, foreign_key: true
      t.references :implementation, index: true, foreign_key: true
    end
  end
end
