require 'minitest/autorun'
require './pbkdf2'

class PBKDF2Test < MiniTest::Test
  def test_pbkdf2
    assert_equal "kSZ3JZ6ov0v5HVwjzHz4pQg8+x8=", pbkdf2("password", "salt1234", 100000, 20)
    assert_equal "U0WSjbIsUg6DvHVmGi6oRXr/KSA=", pbkdf2("password", "0000salt", 100000, 20)
    assert_equal "tOE5IC6zqHxfbexkOfSIQtyqknA=", pbkdf2("other",    "salt1234", 100000, 20)
    assert_equal "/11bL9NO6j7Ho7ZLw929RfZve0Y=", pbkdf2("other",    "0000salt", 100000, 20)
  end
end
