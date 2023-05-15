class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_name)
    "Well done!" if self.grade > other_name.grade
  end

  protected

  attr_reader :grade
end

joe = Student.new("Joe", 44)
bob = Student.new("Bob", 17)

p joe.better_grade_than?(bob)