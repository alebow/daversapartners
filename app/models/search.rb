class Search < ActiveRecord::Base
  attr_accessible :client_id, :position, :associate_id
  belongs_to :client
  belongs_to :associate

end
