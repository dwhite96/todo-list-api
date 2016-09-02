require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:title) }
  end
end
