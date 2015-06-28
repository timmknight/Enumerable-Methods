module Enumerable
	def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
	end

print [1,2,3].my_each
# => 1,2,3

	def my_each_with_index
	end
	
	def my_select
		
	end

	def my_all?
		
	end

	def my_any?
		
	end

	def my_count
		
	end

	def my_map
		
	end

	def my_inject
		
	end

end

