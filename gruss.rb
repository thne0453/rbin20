#!/usr/bin/env ruby
class Gruss
	attr_accessor :names
	
	def initialize(names="World")
		@names=names
	end

	def say_hello
		if @names.nil?
			puts "...nil"
		elsif @names.respond_to?("each")
			@names.each do |name|	
				puts "Hello #{name}."
			end
		else
			puts "Hello, #{@names} !"
		end
	end

	def say_ciao
		if @names.nil?
			puts "...nil"
		elsif @names.respond_to?("join")
			puts "Ciao, #{@names.join(", ")}, c u"
		else
			puts "Ciao #{@names} "
		end
	end
end
if __FILE__ == $0
  mg = Gruss.new
  mg.say_hello
  mg.say_ciao

  mg.names = "Anna"
  mg.say_hello
  mg.say_ciao


  mg.names = ["Anna", "Bob", "Clarence"]
  mg.say_hello
  mg.say_ciao

  mg.names = nil
  mg.say_hello
  mg.say_ciao
end
