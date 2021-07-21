class Person < ApplicationRecord
  def full_name
    name + " " + last_name
  end

  def imc
    (height * height) / weight
  end
end
