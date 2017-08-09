require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test "add_friend should add a stranger user as a friend " do
  #   a = User.create(name:"test1", email:"test@com", password:"1111")
  #   b = User.create(name:"test2", email:"test2@com", password:"2222")

  #   a.add_friend(b)

  #   assert_includes a.friends, b
  #   assert_equal 1, a.friends.count
  # end


  test "add_friend should not add a stranger as a friend twice" do
    a = User.create(name:"test1", email:"test@com", password:"1111")
    b = User.create(name:"test2", email:"test2@com", password:"2222")

    a.add_friend(b)
    a.add_friend(b)

    #assert_includes a.friends, b
    assert_equal(1, a.friends.count)

    assert 5 == 4+1
  end

end
