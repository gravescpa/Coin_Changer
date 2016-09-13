def coin_changer(cents_received)
	coins = {}
	if cents_received == 1
		coins[:penny] = 1
	end
	coins

end

coins = coin_changer(1)
puts coins