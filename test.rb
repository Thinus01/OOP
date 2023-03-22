require_relative 'person'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

person = Person.new(25, "john doe")
puts person.correct_name
# Output: john doe

person = CapitalizeDecorator.new(Person.new(25, "john doe"))
puts person.correct_name
# Output: John doe

person = TrimmerDecorator.new(Person.new(25, "john doe is a very long name"))
puts person.correct_name
# Output: john doe i
