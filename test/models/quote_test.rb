require "test_helper"

class QuoteTest < ActiveSupport::TestCase
  test "#total_price returns total price of all line items" do
    assert_equal 1837, quotes(:first).total_price
  end
end
