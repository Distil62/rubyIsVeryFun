require 'test_helper'

feature "Homepage" do
  it "respond 200 when loading homepage" do
    get root_path

    assert_equal 200, last_response.status, "Loading homepage sucessful"
  end
end
