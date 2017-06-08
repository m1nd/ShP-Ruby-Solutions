require "YAML"

class Object

	def err_log e
		puts "[Error description]:"
		puts "#{e.class} => #{e.message}"
		puts
		puts "[Error trace]:"
		puts e.backtrace
	end

end

class PersonCollection

	class DataError < StandardError
	end

	include Enumerable

	attr_accessor :persons

	def initialize
		@persons = parse! DATA.read		
		rescue => e
		err_log e
	end

	def each &block
		@persons.each{ |person| block.call person}		
	end
	

  private
  	
  	def parse! data
  		records = YAML.load data
  		raise DataError, "Пожалуйста укажите какие-нибудь данные" unless records

  		records.map! do |record|
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
---
- name: "jack" 
  age": 23 
  gender: "M"

- name: "john"
  age: 17 
  gender: "M"

- name: "jane"
  age: 19 
  gender: "F"