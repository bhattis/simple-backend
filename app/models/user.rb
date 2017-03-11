class User < ApplicationRecord

  include SentientUser
  authenticates_with_sorcery!
  attr_accessor :password_confirmation

  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true

  before_create :generate_api_token
  
  belongs_to :tenant

  acts_as_paranoid

  def generate_api_token
    self.api_token = SecureRandom.hex(24)
  end

end
