require 'pry'
# code here!

class School

  def initialize(student_name)
    @student_name = student_name
    @roster = {}
  end

  def roster=(roster)
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    roster[grade].each do |student|
     student.split("  ")
    end
  end

  def sort
    sorted_arr = []
    roster.each do |grade, students|
      sorted_arr << students.sort!
    end
  end
end
