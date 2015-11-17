class Arrest < ActiveRecord::Base
  attr_accessible :arresting_officer, :client_id, :offense
  belongs_to :client
end
