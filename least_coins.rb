
def least_coins(cents)
	hash = {:quarters => 0, :dimes => 0, :nickels => 0, :pennies => 0}


	while cents > 0
		if cents - 25 >= 0
			hash[:quarters] +=1
			cents = cents -25
		
		elsif cents - 10 >= 0
			hash[:dimes] +=1
			cents = cents - 10 		
		
		elsif cents - 5 >= 0
			hash[:nickels] +=1
			cents = cents -5
				
		else cents - 1 >= 0
			hash[:pennies] +=1
			cents = cents -1
		end #end of if 
	end # end of while
	
	return hash

end # end of method 

puts least_coins(45)