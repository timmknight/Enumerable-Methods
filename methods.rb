module Enumerable
	def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
	end

	def my_each_with_index
		return self unless block_given?
    for i in 0...self.length
      yield(self[i], i)
    end
	end

	def my_select
		arr = []
		my_each do |i|
			arr << i if yield(i)
		end
		arr
	end

	def my_all?
		all = true
		self.my_each do |i|
			if block_given?
				all = false if yield(i) == false
			end
		end
		all
	end

	def my_any?
			any = false
		self.my_each do |i|
			if block_given?
				any = true if yield(i) == true
			end
		end
		any
	end

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

	def my_count
		count = 0
		self.my_each do |i|
			i+=1
		end
		count
	end

	def my_map(proc=nil)
		arr = []
		if proc
			self.my_each { |i| arr << proc.call(i) }
			arr
		else
			self.my_each { |i| arr << yield(i)}
			arr
		end	
	end


	def my_inject(initial=nil)
		memo = initial.nil? ? self[0] : initial
		self.my_each { |i| memo = yield(memo, i)}
		memo
	end
end


def multiply_els(array)
	array.my_inject(1) { |total, element| total * element }
end

