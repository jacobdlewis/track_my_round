class User < ActiveRecord::Base
  after_save :welcome_notification

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def welcome_notification
    UserMailer.welcome(self).deliver
  end

end
