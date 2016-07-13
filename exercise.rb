class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
 	def self.marklar(str)
        	if str =~ /[A-Z]\w{4,}/
     			str = str.gsub(/[A-Z]\w{4,}/,'Marklar')
      			str = str.gsub(/\b[a-z]\w{4,}/,'marklar')
       		else         
            		str = str.gsub(/[a-z]\w{4,}/,'marklar')
        	end
        	return str
	end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  # A(n) = n . r *n-1
 	def self.even_fibonacci(nth)
 		var_a = 1
		var_b = 1
		var_rt = nth - 2
		even_var = Array.new
		var_total = 0
		e_num = 0
		e_total=0
		
		
		for i in 1..var_rt
			var_total = var_a + var_b
				if (var_total %2 == 0)
					even_var << var_total
				end
			var_a = var_b
			var_b = var_total
		end
		even_var.each do |e_num|
			e_total += e_num
		end
	return e_total
	end
end
