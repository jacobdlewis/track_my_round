class Hole < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates :user_id, :course_id, :number, :distance, :par, :score, presence: true
  validates :user_id, :course_id, :number, :distance, :par, :score, numericality: true
end
