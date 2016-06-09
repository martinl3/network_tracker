class Interaction < ActiveRecord::Base
  validates :date, :presence => true
  validates :event, :presence => true
  validates :connection_id, :presence => true

  belongs_to :connections, :class_name => "Connection", :foreign_key => "connection_id"
end
