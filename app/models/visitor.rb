class Visitor < ActiveRecord::Base
  validates_presence_of :tshirt_made
  scope :recent, proc { order("created_at desc").limit(1) }
end
