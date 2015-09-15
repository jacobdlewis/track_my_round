require 'rails_helper'

RSpec.describe Hole, type: :model do
  describe "validations" do
    it { should validate_presence_of(:course_id) }
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:distance) }
    it { should validate_presence_of(:par) }
    it { should validate_presence_of(:score) }
    it { should validate_presence_of(:user_id) }
    it { should validate_numericality_of(:number) }
    it { should validate_numericality_of(:distance) }
    it { should validate_numericality_of(:par) }
    it { should validate_numericality_of(:score) }
    it { should belong_to(:course) }
    it { should belong_to(:user) }
  end
end
