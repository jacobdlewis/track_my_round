require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:number_of_holes) }
    it { should validate_numericality_of(:number_of_holes)}
    it { should validate_length_of(:city).
      is_at_least(3).on(:create)}
  end
end
