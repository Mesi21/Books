require 'securerandom'
require './nameable'

class Person < Nameable
  attr_accessor :name, :age, :rents
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = 'y')
    super()
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rents = []
  end

  def can_use_services?
    of_age? || parent_permission ? true : false
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rents.push(rental)
    rental.add_person(self)
  end

  private

  def of_age?
    age >= 18
  end
end
