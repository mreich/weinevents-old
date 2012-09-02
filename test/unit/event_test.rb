require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should create event" do
    event = Event.new
    event.name = "Test Event"
    event.description = "Das ist ein tolles Test Event"
    event.start_datetime = '2012-08-20 12:00:00'
    event.end_datetime = '2012-08-22 19:00:00'
    assert event.save
  end
  
  test "should find event" do
    event_id = events(:weinevent_in_erlangen).id
    assert_nothing_raised { Event.find(event_id) }
  end
  
  test "should update event" do
    event = events(:weinevent_in_erlangen)
    assert event.update_attributes(:name => 'New Title')
  end

  test "should destroy event" do
    event = events(:weinevent_in_erlangen)
    event.destroy
    assert_raise(ActiveRecord::RecordNotFound) {Event.find(event.id)}
  end

  test "should not create an event without name nor description" do
    event = Event.new
    assert !event.valid?
    assert event.errors[:name].any?
    assert event.errors[:description].any?
    assert_equal ["can't be blank"], event.errors[:name]
    assert_equal ["can't be blank"], event.errors[:description]
    assert !event.save
  end
end
