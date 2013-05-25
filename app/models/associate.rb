class Associate < ActiveRecord::Base
  attr_accessible :email, :group_id, :name, :password, :password_confirmation
  has_secure_password
  belongs_to :group

  before_save { |associate| associate.email = email.downcase }
  before_save :create_remember_token

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  private
	  def create_remember_token
	  	self.remember_token = SecureRandom.urlsafe_base64
	  end
end
