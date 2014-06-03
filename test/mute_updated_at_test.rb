require 'test_helper'

class MuteUpdatedAtTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, MuteUpdatedAt
  end

  test "should save post" do
    post = Post.new({ :title => "abc" })
    assert post.save
  end

  test "do not updated_at" do
    post = Post.new({ :title => "abc" })
    assert post.save
    assert_equal post.created_at, post.updated_at
    post.update_attribute(:title, "xyz")
    assert_equal post.created_at, post.updated_at
  end

end
