class OrganizersUsers < ActiveRecord::Base
  belongs_to :organizer
  belongs_to :user
  belongs_to :role
end
