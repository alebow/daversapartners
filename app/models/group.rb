class Group < ActiveRecord::Base
  attr_accessible :name
  has_many :associates
  has_many :searches, :through => :associates

  validates :name, presence: true
end
