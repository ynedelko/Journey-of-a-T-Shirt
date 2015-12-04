require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :us_imports }
  it { should validate_presence_of :min_wage }
  it { should validate_presence_of :poverty }
  it { should validate_presence_of :country_image }
  it { should validate_presence_of :people_image }
end
