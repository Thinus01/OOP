require './person'

class Student < Person
  attr_reader :classroom

  def initialize(checker, classroom, name, age)
    super(name, age)
    @classroom = classroom
    @checker = checker
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_class(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
