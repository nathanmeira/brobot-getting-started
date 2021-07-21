class Person < ApplicationRecord
  def full_name
    raise
    name.capitalize + " " + last_name.capitalize
  end

  def imc
    (height * height) / weight
  end
end
