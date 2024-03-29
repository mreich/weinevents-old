class Tag < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :status
  has_and_belongs_to_many :events
end
