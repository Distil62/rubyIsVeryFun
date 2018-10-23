require 'test_helper'

feature "Admin" do

  describe "Not logged" do
    it "redirect when we are not logged" do
      get admin_root_path

      assert_equal 302, last_response.status, "The user is not connect. It was redirected"
    end
  end

  describe "sign-in" do
    before do
      sign_in users(:one)
    end

    it "respond 200 when i'm logged" do
      get admin_root_path

      assert_equal 200, last_response.status, "Admin root page loaded sucessfully !"
    end

  end

end
