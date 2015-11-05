class Visitor < ActiveRecord::Base
  scope :recent, proc { order("created_at desc").limit(1) }
end
