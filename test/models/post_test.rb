require "test_helper"

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.new
  end

  test 'post should not be valid without a body' do
    refute @post.valid?
  end

  test 'post should be valid with a body' do
    @post.body = 'test'
    assert @post.valid?
  end
end
