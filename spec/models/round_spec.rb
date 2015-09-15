require 'rails_helper'

RSpec.describe Round, type: :model do
  describe "validations" do
  it {should validate_presence_of(:user_id) }
  it {should validate_presence_of(:course_id) }
  it {should validate_numericality_of(:user_id) }
  it {should validate_numericality_of(:course_id) }
  it {should belong_to(:course) }
  it {should belong_to(:user) }
  end
end
