require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

## Ukraine
class RUTest < Phoner::TestCase

  def test_local
    parse_test('+7 495 739-70-70', '7', '495', '7397070', "Russian Federation")
  end

  def test_mobile
    parse_test('+7 495 739-70-70', '7', '495', '7397070', "Russian Federation", true)
  end

  def test_mobile2
    parse_test('7 (495) 739-70-70', '7', '495', '7397070', "Russian Federation", true)
  end
end