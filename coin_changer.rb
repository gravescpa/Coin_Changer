#Coin changer kata

#Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

#eg - if you have 11 cents you should return {:dime => 1, :penny = 1}; if you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny =>1}.

#Build up your coin_changer using tests.  Commit to git after every test.

# Next steps: 
# 1) see if you can remove the hard coded numbers from the logic of the code (can you set variable names at the top of the function to certain values that you can use in their place)?
# 2) make the penny if statement exactly as the others
# 3) see if you can find a way to only have a single if statement (think iteration)

# Tried to add a user input but it doesn't work
# puts "I can tell you the combination of the least amount of coins for the number of cents you have"
# print "How many cents do you have?"
# cents_received = gets.chomp



def coin_changer(cents_received)

	coins = {}

	coins_value = {:sacagawea => 100, :half_dollar => 50, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	
	coins_value.each do |coin, value|

		if cents_received >= value
			coins[coin] = cents_received / value
		end

		cents_received = cents_received % value

	end

	coins
end

	#This is the first round of attempts
	# if cents_received.between?(6,9)
	# 	coins[:nickel] = 1
	# 	coins[:penny] = cents_received - 5

	# elsif cents_received == 5
	# 	coins[:nickel] = cents_received / 5

	# elsif cents_received.between?(1,4)
	# 	coins[:penny] = cents_received

	# end

coins = coin_changer(352)
puts coins

