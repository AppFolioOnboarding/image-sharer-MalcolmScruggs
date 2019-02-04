require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "validates url" do
    assert_not_predicate Image.new(url: 'http://www.example.com'), :valid?
    assert_not_predicate Image.new(url: 'www.example.com/2/what.png'), :valid?
    assert_not_predicate Image.new(url: 'http://www.example.com/my.pdf'), :valid?
    assert_not_predicate Image.new(url: ''), :valid?
    assert_not_predicate Image.new(url: nil), :valid?
  end
end
