class School 
  attr_accessor :name, :roster, :grade
  
  def initialize (name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student_name , grade)
    #add a student to the school by name and grade 
    #hash["new_key"] = [ ]
    #first create the key in the roster and point it to a value of an empty array, we are able to then successfully add items such as student name to that array.
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade (student_grade)
    # take in an argument of a grade and return all of the students in that grade
    roster[student_grade]
  end 
  
  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end