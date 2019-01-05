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

  def boating_tests
    #give us all instructor's tests
    BoatingTest.all.select do |test_instance|
      test_instance.instructor == self
    end
  end

  def fail_student(student_name, test_name)
    #grab boating test that the instructor is in from the tests (using select)
    the_test = all_tests.find do |test_instance|
      test_instance.student == student_name && test_instance.test_name == test_name
    end
    #finds the test instance we were looking for.
    the_test.test_status = "failed"
  end

  def pass_student(student_name, test_name)
    #grab boating test that the instructor is in from the tests (using select)
    the_test = all_tests.find do |test_instance|
      test_instance.student == student_name && test_instance.test_name == test_name
    end
    #finds the test instance we were looking for.
    the_test.test_status = "passed"
  end
end
