class User < ActiveRecord::Base
  has_and_belongs_to_many :user_groups

  acts_as_authentic 

  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end
end

