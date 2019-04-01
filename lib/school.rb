# code here!
#attr_accessor :grade :add_student 
require 'pry'

class School 
  
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    binding.pry 
    if @roster[grade] != nil #empty hash will always give you nil
    @roster[grade] << name
  else 
    @roster[grade] = [name] 
   end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
      binding.pry 
    end 
  end 
end

