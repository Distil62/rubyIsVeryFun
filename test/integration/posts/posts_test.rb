require 'test_helper'

feature "Post" do
  it "respond 200 when loading " do
    get posts

    assert_equal 200, last_response.status, "Loading posts sucessful"
  end
end
