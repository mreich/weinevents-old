require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should creare event" do
    event = Event.new
    event.name = "Test Event"
    event.description = "Das ist ein tolles Test Event"
    start_datetime = '2012-08-20 12:00:00'
    end_datetime = '2012-08-22 19:00:00'
    assert event.save
  end
end
