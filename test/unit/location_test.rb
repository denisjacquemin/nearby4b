require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "should not save location without address" do
    location = Location.new
    location.start_date = Time.zone.now
    location.end_date = Time.zone.now
    location.person_id = 1
    location.planner_id = 1
    assert !location.save, "Saved the location without an address"
  end
  
  test "should not save location without person" do
    location = Location.new
    location.start_date = Time.zone.now
    location.end_date = Time.zone.now
    location.address = 'foo bar'
    location.planner_id = 1
    assert !location.save, "Saved the location without a person"
  end
  
  test "should not save location without planner" do
    location = Location.new
    location.start_date = Time.zone.now
    location.end_date = Time.zone.now
    location.address = 'foo bar'
    location.person_id = 1
    assert !location.save, "Saved the location without a planner"
  end
end
