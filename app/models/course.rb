class Course < ActiveRecord::Base
  validates :name, :city, :state, :number_of_holes, presence: true
  validates :number_of_holes, numericality: true
  validates :city, length: { minimum: 3 }
end
