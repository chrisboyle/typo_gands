class Production < ActiveRecord::Base
	has_many :team, :class_name => 'TeamMember'
	has_many :cast, :class_name => 'CastMember'
	default_scope order('year DESC, startdate DESC')

	def dates
		(startdate && enddate) ? (startdate .. enddate) : nil
	end
end
