require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

## Latvia
class LVTest < Phoner::TestCase

  def test_local
    parse_test('+371 2 63 12345', '371', '26', '312345', "Latvia")
  end

  def test_mobile
    parse_test('+371 26-312-345', '371', '26', '312345', "Latvia", true)
  end

  def test_mobile2
    parse_test('371 (26) 312-345', '371', '26', '312345', "Latvia", true)
  end
end