require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  def setup
  	@review = Review.create(body: "aaaaaaaa", recipe_id: 1, chef_id: 1)
  end

  test "Review should be valid" do 
  	assert @review.valid?
  end

  test "body can't be empty" do
	@review.body = " "
	assert_not @review.valid?  	
  end

  test "body length should not be too short" do 
  	@review.body = "aaaa"
  	assert_not @review.valid?
  end

  test "body length should not be too long" do 
  	@review.body = "a" * 501
  	assert_not @review.valid?
  end

  test "Recipe ID should be present" do 
  	@review.recipe_id = nil
  	assert_not @review.valid? 
  end

  test "Chef ID should be present" do 
  	@review.chef_id = nil
  	assert_not @review.valid?
  end
end
