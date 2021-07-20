class Person < ApplicationRecord
  def full_name
    name.capitalize + " " + last_name.capitalize
  end

  def imc
    (height)
  end
end
