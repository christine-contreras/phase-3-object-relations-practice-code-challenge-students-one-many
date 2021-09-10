class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    student = Student.find_or_create_by(name: name, age: age)
    self.students << student
    student
  end

  def average_age
    (self.students.map {|student| student.age }.sum / self.students.count).to_f
  end

  def total_students
    (self.students.count).to_i
  end

  def self.biggest
    self.all.sort_by do |cohort|
        cohort.students.count
    end.reverse.first
  end

  def self.sort_by_mod
    self.order(current_mod: :asc)
  end


end