require "test_helper"

class PostTest < ActiveSupport::TestCase
  fixtures :posts, :animals, :users
  test 'animal is required' do
    post = Post.new(animal: nil, user: users(:one))
    assert_not post.valid?
  end
  
  test 'user is required' do
    post = Post.new(animal: animals(:one), user: nil)
    assert_not post.valid?
  end

  test 'post is valid' do
    post = Post.new(posts(:valid_post).attributes)
    assert post.valid?
  end
end
