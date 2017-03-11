class Tenant < ApplicationRecord
  after_create_commit :create_db_schema

  validates_presence_of :subdomain
  validates_uniqueness_of :subdomain

  has_many :users

  def create_db_schema
    Apartment::Tenant.create(subdomain)
  end

end
