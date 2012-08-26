class Profile < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  belongs_to :user
  belongs_to :status
  belongs_to :type
end
