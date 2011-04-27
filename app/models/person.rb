class Person < ActiveRecord::Base
	def name
		[forename,surname].join(" ")
	end
end
