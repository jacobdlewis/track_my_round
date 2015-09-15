class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_many :holes

  validates :course_id, :user_id, presence: true
  validates :course_id, :user_id, numericality: true
end
