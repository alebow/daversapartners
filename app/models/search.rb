class Search < ActiveRecord::Base
  attr_accessible :client_id, :position
  belongs_to :client
  
end
