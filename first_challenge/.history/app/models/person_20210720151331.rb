class Person < ApplicationRecord
  def full_name
    name.capitalize + " " + last_name.capitalize
  end
end
