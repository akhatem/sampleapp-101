require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should follow and unfollow a user" do
    kareem = users(:kareem)
    lana  = users(:lana)
    assert_not kareem.following?(lana)
    kareem.follow(lana)
    assert kareem.following?(lana)
    assert lana.followers.include?(kareem)
    kareem.unfollow(lana)
    assert_not kareem.following?(lana)
  end

  test "feed should have the right posts" do
    michael = users(:michael)
    archer  = users(:archer)
    lana    = users(:lana)
    # Posts from followed user
    lana.microposts.each do |post_following|
      assert michael.feed.include?(post_following)
    end
    # Posts from self
    michael.microposts.each do |post_self|
      assert michael.feed.include?(post_self)
    end
    # Posts from unfollowed user
    archer.microposts.each do |post_unfollowed|
      assert_not michael.feed.include?(post_unfollowed)
    end
  end
end
