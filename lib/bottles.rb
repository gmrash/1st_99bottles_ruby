require 'active_support/inflector'
require_relative 'bottle_number'

class Bottles

	def song
		verses(99, 0)
	end

	def verses(finish, start)
		(finish).downto(start).map {|verse_number| verse(verse_number) }.join("\n")
	end
	
	def verse(number)
		bottle_num = BottleNumber.new(number)
		next_bottle_num = BottleNumber.new(bottle_num.successor)
		
		<<~TEXT
		#{bottle_num.to_s.capitalize} of beer on the wall, \
		#{bottle_num} of beer.
		#{bottle_num.action}, \
		#{next_bottle_num} of beer on the wall.
		TEXT
	end
end

