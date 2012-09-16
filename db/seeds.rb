# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create :email => 'reich.michael@gmail.com', :password => 'erlangen'

Tag.create [{:name => 'Weinfest'},
            {:name => 'Weinprobe'},
            {:name => 'Weinmesse'}]

event = Event.create  :status_id => '1', 
                      :name => 'Beaujoulais Weinfest', 
                      :description => 'Wir feiern die Ankunft des Beaujoulais in Erlangen.', 
                      :start_datetime => '2012-08-01 14:00:00', 
                      :end_datetime => '2012-08-03 18:00:00', 
                      :cost => '50 EUR pro person', 
                      :website => 'www.weinevents.de', 
                      :organizer_id => '1'

organizer = Organizer.create  :status_id => '1',
                              :name => 'Weinbuettner',
                              :street_1 => 'Weinstrasse 1',
                              :street_2 => 'Vor dem alten Tore',
                              :addresscity => 'Erlangen',
                              :state => 'Bayern',
                              :zip => '91052',
                              :phone => '09131-56725',
                              :website => 'www.weinbuettner.de',
                              :city_id => '1'

location = Location.create    :status_id => '1',
                              :name => 'Altstaetter Kirchplatz',
                              :street_1 => 'Altstaetter Kirchplatz 1',
                              :street_2 => '',
                              :addresscity => 'Erlangen',
                              :state => 'Bayern',
                              :zip => '91052',
                              :phone => '',
                              :city_id => '1'

profile = Profile.create      :status_id => '1',
                              :user_id => '1',
                              :first_name => 'Michael',
                              :last_name => 'Reich',
                              :phone => '0174-330 3491',
                              :type_id => '1',
                              :hear_about => 'Ich hab die Webseite doch gebaut!' 

region = Region.create        :status_id => '1',
                              :name => 'Bayern',
                              :description => 'das Bierland Bayern ist auch ein wichtiges Weinland mit weltberuehmten Weinbergen. Der Stein bei Wuerzburg galt schon bei Johann Wolfgang Goethe als das Nonplusultra, denn der Alte aus Weimar liebte den Tropfen aus diesem Berg. Das Juliusspital in Wuerzburg schafft es bis auf den heutigen Tag, hervorragende Weine aus dem Stein zu gewinnen.'

country = Country.create      :status_id => '1',
                              :name => 'Deutschland',
                              :description => 'Deutschland ist ein Weinland.'
                              
category = Category.create    :status_id => '1',
                              :name => 'Weinhaendler'

city = City.create            :status_id => '1',
                              :name => 'Erlangen',
                              :description => 'Erlangen ist eine Universitaetstadt in Mittelfranken.'
                              
city = City.create            :status_id => '2',
                              :name => 'Bamberg',
                              :description => 'Bamberg ist eine Universitaetstadt in Bayern.'  
                                                          
status = Status.create        :name => 'active'                              
                              
role = Role.create            :status_id => '1',
                              :name => 'Inhaber'

#type = Type.create            :status_id => '1',
#                              :name => 'Keine Ahnung warum ich einen Type geschaffen habe.'
                              
city_event = CitiesEvents.create          :event_id => '1',
                                          :city_id => '1'

category_event = CategoriesEvents.create     :event_id => '1',
                                          :category_id => '1'
                              
event_location = EventsLocations.create     :event_id => '1',
                                          :location_id => '1'
                                          
event_user = EventsUsers.create             :event_id => '1',
                                          :user_id => '1',
                                          :role_id => '1'
                                          
event_region = EventsRegions.create         :event_id => '1',
                                          :region_id => '1'
                                          
event_tag = EventsTags.create               :event_id => '1',
                                          :tag_id => '1'
                                          
location_organizer = LocationsOrganizers.create   :location_id => '1',
                                                :organizer_id => '1'
                                                
organizer_user = OrganizersUsers.create     :organizer_id => '1',
                                          :user_id => '1',
                                          :role_id => '1'
                                          
city_region = CitiesRegions.create        :region_id => '1',
                                          :city_id => '1'
                                          
country_region = CountriesRegions.create     :country_id => '1',
                                          :region_id => '1'
                                          
                                          
                                          
                              
                              

                              