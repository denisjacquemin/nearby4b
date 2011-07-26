require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
  test "should not save community without name" do
    community = Community.new
    community.description = 'foobar'
    assert !community.save, "Saved the community without a name"
  end
end
