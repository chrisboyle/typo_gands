class CastMember < Person
	set_table_name :cast
	belongs_to :production

	def role
		read_attribute :role
	end

	def role_with_chorus_lookup
		case role_without_chorus_lookup
		when 'MC' then production.mcname || 'Male Chorus'
		when 'FC' then production.fcname || 'Female Chorus'
		else role_without_chorus_lookup
		end
	end
	alias_method_chain :role, :chorus_lookup
end
