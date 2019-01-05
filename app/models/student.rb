class Student
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.full_names
    self.all.map do |student|
      "#{student.first_name} #{student.last_name}"
    end
    # ["SpongeBob SquarePants", "Patrick Star", ...]
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(full_name)
    #full_name = "SpongeBob SquarePants"
    self.all.find do |student|
      "#{student.first_name} #{student.last_name}" == full_name
    end
  end
end
