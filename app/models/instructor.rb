class Instructor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_test(student_name,test_name)
    BoatingTest.all.find do |test|
    test.student.first_name == student_name && test_name == test.test_name
    end
  end

  def self.pass_student(student_name,test_name)
    Instructor.find_test(student_name,test_name).status = "Pass"
  end

  def self.student_grade_percentage(student_name)
    studentTests = BoatingTest.all.select do |test|
      test.student.first_name == student_name
    end
    totalTests= studentTests.length.to_f
    totalPassed= studentTests.find_all{|test| test.status == "pass"}
    numPassed= totalPassed.length.to_f
    percent= (numPassed/totalTests)*100

  end
end
