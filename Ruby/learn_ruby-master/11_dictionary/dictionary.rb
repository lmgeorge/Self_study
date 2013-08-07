class Dictionary 
	def initialize
		@stuff = {}
	end
	def entries
		@stuff
	end

	def add things
		things.is_a?(Hash) ? @stuff.merge!(things) : @stuff.merge!(things => nil)
	end
	def include? key
		@stuff.has_key? (key)
	end

	def keywords
		@stuff.keys.sort
	end

	def find str
		@stuff.select { |k, v| k if k.include? "#{str}"}
	end

	def printable
		@stuff.sort.map { |pair| %Q{[#{pair[0]}] "#{pair[1]}"} }.join"\n"
	end
end