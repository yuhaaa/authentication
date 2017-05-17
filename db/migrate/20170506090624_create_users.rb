class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :email
      t.string :password_digest
      t.string :nickname

      t.timestamps null: false
    end
  end
end
