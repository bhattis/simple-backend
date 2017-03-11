class SorceryCore < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :api_token,        :null => false
      t.string :phone
      t.uuid :tenant_id
      t.datetime :deleted_at

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
    add_index :users, :api_token, unique: true
    add_index :users, :deleted_at
  end
end
