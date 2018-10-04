require_relative "config/environment.rb"
require "pry"



nathan = Student.new("Nathan")
titi = Student.new("Tihtina")

paul = Instructor.new("Paul Nicholsen")
jake = Instructor.new("Jake Shilling")

test1 = BoatingTest.new(nathan, "oo_relations", "pass", paul)
test2 = BoatingTest.new(titi, "active_directory", "will_pass",jake)
test3 = BoatingTest.new(nathan, "mod3","pending",jake)




binding.pry
0
