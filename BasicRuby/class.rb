class Book
	attr_accessor :title, :author
	Days = 21

	def title()
		puts "this is title" 
	end

	def initialize(title, author)
		@title = title
		@author = author
	end

	def readBook()
		puts "Reading #{self.title} by #{self.author}"
	end
end


class Author < Book
	def authorClass()
		puts "Nihal Auther"
	end
end

book1 = Book.new("Harry","JK")
author = Author.new('ads','ad')
#book1.title = "Harry Potter"
#book1.author = "JK Rowling"

book1.readBook()
book1.title()
author.readBook()
author.authorClass()

puts Book::readBook()
