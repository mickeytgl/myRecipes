require 'test_helper'

class ChefTest < ActiveSupport::TestCase
	def setup
		@chef = Chef.new(name: "John", email: "johnexample@gmail.com")
	end

	test "chef should be valid" do 
		assert @chef.valid?
	end

	test "chefname should be present" do 
		@chef.name = " "
		assert_not @chef.valid?
	end

	test "chefname should not be too long" do 
		@chef.name = "a" * 41
		assert_not @chef.valid?
	end

	test "chefname should not be too short" do 
		@chef.name = "aa"
		assert_not @chef.valid?
	end

	test "email must be present" do 
		@chef.email = " "
		assert_not @chef.valid?
	end

	test "email length should be within bounds" do 
		@chef.email = "a" * 101 + "@example.com"
		assert_not @chef.valid?
	end

	test "email adress should be unique" do 
		dup_chef = @chef.dup
		dup_chef.email = @chef.email.upcase
		@chef.save
		assert_not dup_chef.valid?
	end

	test "email validation should accept valid adresses" do 
		valid_adresses = %w[user@eee.com R_TDD-D5@eee.hello.org user@example.com first.last@etu.au laurajohn@green.cm]
		valid_adresses.each do |va|
			@chef.email = va 
			assert @chef.valid?, '#{va.inspect} should be valid'
		end			
	end

	test "email validation should reject invalid adresses" do
		invalid_adresses = %w[user@example,com user_at_tee.org user.name@example. eee@i_am_.com foo@eee+aar.com]
		invalid_adresses.each do | ia |
			@chef.email = ia 
			assert_not @chef.valid?, '#{ia.inspect} should be invalid'
		end
	end


end