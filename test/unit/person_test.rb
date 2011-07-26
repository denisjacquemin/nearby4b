require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "should not save person without community" do
    person = Person.new
    person.lastname = 'foo'
    person.firstname = 'foo'
    person.email = 'foo@example.com'
    person.tel = '123456'
    person.gsm   = '123456'
    person.description = 'foo bar'
    assert !person.save, "Saved the person without a community"
  end
  
  test "should not save person without firstname" do
    person = Person.new
    person.lastname = 'foo'
    person.community_id = 1
    person.email = 'foo@example.com'
    person.tel = '123456'
    person.gsm   = '123456'
    person.description = 'foo bar'
    assert !person.save, "Saved the person without a firstname"
  end
  
  test "should not save person without lastname" do
    person = Person.new
    person.firstname = 'foo'
    person.community_id = 1
    person.email = 'foo@example.com'
    person.tel = '123456'
    person.gsm   = '123456'
    person.description = 'foo bar'
    assert !person.save, "Saved the person without a lastname"
  end
end
