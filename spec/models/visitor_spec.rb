require 'rails_helper'

RSpec.describe Visitor, type: :model do
    it { should validate_presence_of :tshirt_made }
end
