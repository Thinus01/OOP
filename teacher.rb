require './person'

class Teacher < Person
  def initialize(_id, name, age)
    super(name, age)
  end

  def can_use_services?
    true
  end
end
