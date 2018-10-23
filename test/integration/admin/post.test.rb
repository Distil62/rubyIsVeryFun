require 'test_helper'

feature "Post" do
  before do
    sign_in users(:one)
  end

  describe "Form" do
    it 'should form is right filled' do
      assert_difference 'Post.count' do
        post admin_posts_path, {
            post: {
                title: "new post",
                content: "new content",
                category_id: categories(:one).id
            }
        }

        assert_equal 302, last_response.status, "The form is good filled"
      end
    end

    it "#destroy" do
      assert_difference 'Post.count', -1 do
        delete admin_post_path(posts(:one).id)

        assert_equal 302, last_response.status, "The post has been well destroyed !"
      end
    end

  end
end