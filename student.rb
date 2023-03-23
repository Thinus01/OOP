require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(checker, age, classroom, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom
    @checker = checker
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def add_class(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
