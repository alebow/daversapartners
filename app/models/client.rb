class Client < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :searches
  accepts_nested_attributes_for :searches
  
end
