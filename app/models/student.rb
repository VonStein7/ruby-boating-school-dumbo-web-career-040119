require 'pry'

class Student
	ALL = []

	attr_reader :first_name

	def initialize(first_name)
		@first_name = first_name
		ALL << self
	end

	def self.all 
		ALL
	end

	def add_boating_test(test_name,status,instructor)
		BoatingTest.new(self,test_name,status,instructor)
	end

	def self.find_student(first_name)
		ALL.find do |student|
			first_name == student.first_name
		end
	end

	def grade_percentage
		test_arr = BoatingTest.all.select do |tests|
			tests.student == self
		end

		ratio = test_arr.select do |pass|
			pass.status == 'passed'
		end

		value = "%.2f" % (ratio.length.fdiv(test_arr.length)*100) + "%"
		# fixed_value = "%.2f" % value + "%"
	end
end








