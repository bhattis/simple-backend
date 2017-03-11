class EnableUuidExtension < ActiveRecord::Migration[5.0]
  def change
    ActiveRecord::Base.connection.execute('CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA pg_catalog;')
  end
end
