class BoatingTest
	ALL = []

	attr_reader :student, :test_name, :instructor
	attr_accessor :status

	def initialize(student,test_name,status,instructor)
		@student = student
		@test_name = test_name
		@status = status
		@instructor = instructor
		ALL << self
	end

	def self.all 
		ALL
	end


end
