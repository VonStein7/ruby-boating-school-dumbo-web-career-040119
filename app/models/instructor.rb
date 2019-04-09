class Instructor

	ALL = []

	def initialize(name)
		@name = name

		ALL << self
	end

	def self.all
		ALL
	end
#############################################
	def pass_student(student, test_name)
		truthy = BoatingTest.all.find do |testee|
			testee.student.first_name == student.first_name && testee.test_name == test_name
			#binding.pry
		end

		if truthy.class == BoatingTest
			truthy.status = 'passed'
		elsif 
			truthy = BoatingTest.new(student,test_name,'passed',self)
		end
			
		truthy	
		#binding.pry
	end
#############################################

	def fail_student(student, test_name)
		truthy = BoatingTest.all.find do |testee|
			testee.student.first_name == student.first_name && testee.test_name == test_name
			#binding.pry
		end

		if truthy.class == BoatingTest
			truthy.status = 'failed'
		elsif 
			truthy = BoatingTest.new(student,test_name,'failed',self)
		end
			
		truthy
	end
end
