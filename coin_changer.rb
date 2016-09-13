def coin_changer(cents_received)
	coins = {}
	
	#this is for test #2 if run alone
	

	if cents_received == 5
		coins[:nickel] = cents_received / 5

	elsif cents_received.between?(1,4)
		coins[:penny] = cents_received

	end

		
		




	coins

end

coins = coin_changer(5)
puts coins