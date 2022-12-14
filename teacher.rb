require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, parent_permission = nil, name: 'Unknown')
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
