class Event < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :start_datetime, :presence => true
  validates :end_datetime, :presence => true

  belongs_to :status
  belongs_to :organizer
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :regions
  has_many :events_users
  has_many :users, :through => :events_users
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :cities
  
  #def owned_by?(owner)
  #  return false unless owner.is_a? User
  #  user == owner
  #end
  
  # Used to create nice URLs for the city pages. 
   def to_param
     "#{id}-#{name.parameterize}"
   end
   
   default_scope order('start_datetime')
   scope :current, lambda { |time| where('end_datetime < ?', Time.zone.now) }
   scope :where_city, lambda { where('event.city_id = city_id') }
end