def coin_changer(cents_received)
	coins = {}
	
	#this is for test #2 if run alone
	if cents_received >= 1
		coins[:penny] = cents_received
	end

	coins

end

coins = coin_changer(2)
puts coins