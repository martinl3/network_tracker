class Connection < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => {:scope => :user_id}
end
