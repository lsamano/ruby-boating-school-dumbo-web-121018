require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("SpongeBob", "SquarePants")
patrick = Student.new("Patrick", "Star")
mrkrabs = Student.new("Eugene", "Krabs")

mrspuff = Instructor.new("Mrs. Puff")
plankton = Instructor.new("Plankton")
sandy = Instructor.new("Sandy Cheeks")

test1 = BoatingTest.new(spongebob, "Driving Test", "failed", mrspuff)
test2 = BoatingTest.new(spongebob, "Parallel Parking", "passed", sandy)
test3 = BoatingTest.new(patrick, "Driving Test", "passed", plankton)
test4 = BoatingTest.new(mrkrabs, "Signaling", "passed", mrspuff)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
