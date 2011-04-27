class TeamMember < Person
	set_table_name :teamcrew
	belongs_to :production
end
