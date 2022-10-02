require 'active_support/inflector'

class Bottles

	def verse(number)
		return zero if number == 0
	  return one if number == 1
	  return two if number == 2
		default(number)
	end

	def verses(finish, start)
		(finish).downto(start).map {|verse_number| verse(verse_number) }.join("\n")
	end
	
	def song
		verses(99, 0)
	end
	
	private
	
	def zero
		<<~TEXT
		No more bottles of beer on the wall, no more bottles of beer.
		Go to the store and buy some more, 99 bottles of beer on the wall.
		TEXT
	end
	
	def one
		<<~TEXT
		1 bottle of beer on the wall, 1 bottle of beer.
		Take it down and pass it around, no more bottles of beer on the wall.
		TEXT
	end
	
	def two
		<<~TEXT
		2 bottles of beer on the wall, 2 bottles of beer.
		Take one down and pass it around, 1 bottle of beer on the wall.
		TEXT
	end
	
	def default(number)
		<<~TEXT
		#{number} bottles of beer on the wall, #{number} bottles of beer.
		Take one down and pass it around, #{number - 1} bottles of beer on the wall.
		TEXT
	end
	
end
