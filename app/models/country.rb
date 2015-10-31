class Country < ActiveRecord::Base
  validates_presence_of :name, :us_imports
end
