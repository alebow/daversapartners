class Associate < ActiveRecord::Base
  attr_accessible :email, :group_id, :name, :password, :password_confirmation
  has_secure_password
  belongs_to :group

  before_save { |associate| associate.email = email.downcase }

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
