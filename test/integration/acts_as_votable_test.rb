require 'test_helper'

class ActsAsVotableTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
    @other_user = users(:archer)
    @micropost1 = microposts(:orange)
    @micropost2 = microposts(:tau_manifesto)
  end

  test 'micropost1 should be downvoted by michael and archer' do
    
    @micropost1.downvote_by(@user)
    @micropost1.downvote_by(@other_user)
    assert_equal true, @micropost1.downvote_by(@user)
    assert_equal true, @micropost1.downvote_by(@other_user)
    assert @micropost1.get_downvotes.size  == 2
  end

  test 'micropost2 should be upvoted by michael and archer' do
    @micropost2.upvote_by(@user)
    @micropost2.upvote_by(@other_user)
    assert_equal true, @micropost2.downvote_by(@user)
    assert_equal true, @micropost2.downvote_by(@other_user)
    assert @micropost2.get_downvotes.size  == 2
  end
  
  test 'user should be able to either upvote or downvote only once for the same micropost' do
    @micropost1.upvote_by(@user)
    @micropost1.upvote_by(@user)
    assert_equal 1, @micropost1.get_upvotes.size
    end

    test 'count votes after michael voted but no archer' do
    @micropost2.upvote_by(@user)
    assert_equal true, @user.voted_for?(@micropost2)
    assert_equal false, @other_user.voted_for?(@micropost2)
  end
end
