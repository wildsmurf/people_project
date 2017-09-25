class Person < ApplicationRecord
validates_presence_of :first_name, :last_name, :age, :hair_color, :eye_color, :gender

  def full_name
    "#{first_name} #{last_name}"
  end

  def description
    " is #{age} years old, is #{gender}, has #{hair_color} hair, and has #{eye_color} eyes"
  end

end
