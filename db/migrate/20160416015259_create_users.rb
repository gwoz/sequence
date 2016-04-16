class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :email, null: false
      t.string :password_digest, null: false
      t.references :user_type, index: true, foreign_key: true, null: false
      t.references :entity, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
