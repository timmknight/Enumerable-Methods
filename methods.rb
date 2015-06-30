module Enumerable
	def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
	end

# print [1,2,3].my_each
# => 1,2,3

	def my_each_with_index
		return self unless block_given?
    for i in 0...self.length
      yield(self[i], i)
    end
	end

# ["a", "b", "c"].each_with_index do |item, index| 
# 	puts item
# 	puts index
# end
# => a,0,b,1,c,2

	def my_select
		arr = []
		my_each do |i|
			arr << i if yield(i)
		end
		arr
	end

	# [1,2,3,4,5].my_select do |num|
	#   num.even?  
	# end
	#=> [2, 4]

	def my_all?
		all = true
		self.my_each do |i|
			if block_given?
				all = false if yield(i) == false
			end
		end
		all
	end

# puts %w[ant bear cat].my_all? { |word| word.length >= 3 }

	def my_any?
			any = false
		self.my_each do |i|
			if block_given?
				any = true if yield(i) == true
			end
		end
		any
	end

# puts %w[ant bear cat].my_any? { |word| word.length >= 2 } #=> true


	def my_none?
		none = true
		self.my_each do |i|
			if block_given?
				none = false if yield(i) == true
			end
			if !block_given?
				none = false if i == true
			end
		end
		none
	end
# puts %w{ant bear cat}.my_none? { |word| word.length == 5 } #=> true
# puts %w{ant bear cat}.my_none? { |word| word.length >= 4 } #=> false
# puts [].my_none?                                           #=> true
# puts [nil].my_none?                                        #=> true
# puts [nil, false].my_none?                                 #=> true
# puts [true].my_none?																		 	 #=> false

	def my_count
		count = 0
		self.my_each do |i|
			i+=1
		end
		count
	end

# ary = [1, 2, 4, 2]
# puts ary.count               #=> 4
# puts ary.count(2)            #=> 2
# puts ary.count{ |x| x%2==0 } #=> 3
	def my_map
		return self unless block_given?
		arr = []
		self.my_each do |i|
			arr << yield(i)
		end
		arr
	end

# puts (1..4).my_map { |i| i*i }      #=> [1, 4, 9, 16]

	def my_inject
		
	end

end

