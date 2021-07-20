class Person < ApplicationRecord
  def full_name(name, last_name)
    full_name = @person.name.capitalize + " " + @person.last_name.capitalize
  end
end
