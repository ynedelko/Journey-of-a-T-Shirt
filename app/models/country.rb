class Country < ActiveRecord::Base
  validates_presence_of :name, :us_imports, :min_wage, :poverty, :country_image, :people_image
end
