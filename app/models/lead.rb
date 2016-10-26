class Lead < ApplicationRecord
  validates :email, presence: true
  validates_email_format_of :email, :message => 'is not looking good'
end
