class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :tenants, id: :uuid do |t|
      t.string :name
      t.string :subdomain, unique: true
      
      t.timestamps
    end
  end
end
