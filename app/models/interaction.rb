class Interaction < ActiveRecord::Base
  validates :date, :presence => true
  validates :event, :presence => true
  validates :connection_id, :presence => true
end
