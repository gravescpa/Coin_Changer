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

	def test_2_cents_equals_two_pennies
		cents_received = 2
		assert_equal({:penny => 2}, coin_changer(cents_received))
	end

	def test_5_cents_equals_one_nickel
		cents_received = 5
		assert_equal({:nickel => 1}, coin_changer(cents_received))
	end

	def test_7_cents_equals_one_nickel_and_two_pennies
		cents_received = 7
		assert_equal({:nickel => 1, :penny => 2}, coin_changer(cents_received))
	end	

	def test_46_cents_equals_1_quarter_2_dimes_1_penny
		cents_received = 46
		assert_equal({:quarter => 1, :dime => 2, :penny => 1}, coin_changer(cents_received))
	end

	def test_99_cents
		cents_received = 99
		assert_equal({:quarter => 3, :dime => 2, :penny => 4}, coin_changer(cents_received))
	end

	def test_41_cent
		cents_received = 41
		assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 1}, coin_changer(cents_received))
	end

end