require "JSON"

class PersonCollection

	include Enumerable

	attr_accessor :persons

	def initialize
		@persons = parse! DATA.read		
	end

	def each &block
		@persons.each{ |person| block.call person}		
	end
	

  private
  	
  	def parse! data
  		JSON.parse(data).map! do |record|
  			Person.new record
  		end
  	end
	
end

class Person

	attr_accessor :name, :age, :gender

	def initialize record
		@name = record['name']
		@age = record['age']
		@gender = record['gender']
	end

	def to_s
		"#{@name.capitalize} [#{@gender}], age: #{@age}"
	end
	
	
end


collection = PersonCollection.new 
collection.each{|person| puts person}
p collection.first

__END__
[
	{"name":"jack", "age":"23", "gender":"M"},
	{"name":"john", "age":"17", "gender":"M"},
	{"name":"jane", "age":"19", "gender":"F"}
]