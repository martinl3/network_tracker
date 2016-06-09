class Connection < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => {:scope => :user_id}

  has_many :interactions, :class_name => "Interaction", :foreign_key => "connection_id"
end
