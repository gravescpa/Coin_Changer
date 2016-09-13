#Coin changer kata

#Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

#eg - if you have 11 cents you should return {:dime => 1, :penny = 1}; if you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny =>1}.

#Build up your coin_changer using tests.  Commit to git after every test.


require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_0_cents_returns_empty_hash
		cents_received = 0
		assert_equal({},coin_changer(cents_received))
	end

	def test_1_cent_equals_one_penny
		cents_received = 1
		assert_equal({:penny => 1}, coin_changer(cents_received))
	end
end