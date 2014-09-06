class PrimeGenerator

	def is_prime number
		initCount = 2
		prime = true
		while (prime && (initCount != number)) 
			if is_multiple_for? number,initCount
				prime = false
			end
			initCount += 1
		end
		prime
	end

	def is_multiple_for? (number,multiple)
		number%multiple == 0
	end

	def all_primes_to number
		listOfPrimes = []
		for i in (2..number)
			listOfPrimes = is_prime_push_to_array(listOfPrimes,i)
		end
		listOfPrimes
	end

	def is_prime_push_to_array (array,number)
		if is_prime(number)
			array.push(number)
		end
		array
	end
end
